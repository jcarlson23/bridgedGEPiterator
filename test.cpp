#include <llvm-c/Core.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Support/FileSystem.h>
#include <llvm/Support/Signals.h>
#include <llvm/Support/PrettyStackTrace.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/GetElementPtrTypeIterator.h>

#include "GEPTypeBridgeIterator.h"

using namespace llvm;

static cl::opt<std::string> InputFilename(cl::Positional,
        cl::desc("<input bitcode>"), cl::init("-"));


/// Return corresponding constant expression, otherwise return NULL             
//@{                                                                            
inline const llvm::ConstantExpr *isGepConstantExpr(const llvm::Value *val) {
  if(const llvm::ConstantExpr* constExpr = llvm::dyn_cast<llvm::ConstantExpr>\
     (val)) {
    if(constExpr->getOpcode() == llvm::Instruction::GetElementPtr)
      return constExpr;
  }
  outs() << "\n";
  return NULL;
}


bool computeGepOffset( const llvm::User * V ) {
  assert(V);
  for ( gep_type_iterator gi = gep_type_begin(*V), ge = gep_type_end(*V); gi != ge; gi++ ) {
    gi.getIndexedType()->dump();
    gi.getOperand()->dump();
  }
  outs() << "\n";
  return true;
}

bool computeBridgedOffset( const llvm::User *V ) {
  assert(V);
  for ( bridge_gep_iterator gi = bridge_gep_begin(*V), ge = bridge_gep_end(*V); gi != ge; gi++ ) {
    (*gi)->dump();
    gi.getOperand()->dump();
  }
  return true;
}

int main(int argc, char **argv) {

  sys::PrintStackTraceOnErrorSignal(argv[0]);
  llvm::PrettyStackTraceProgram X(argc, argv);

  LLVMOpaqueContext * WrappedContextRef = LLVMGetGlobalContext();
  LLVMContext &Context = *unwrap(WrappedContextRef);

  cl::ParseCommandLineOptions(argc, argv, "Test GEP iterator\n");
  sys::PrintStackTraceOnErrorSignal(argv[0]);

  SMDiagnostic Err;

  // Load the input module...
  std::unique_ptr<Module> M = parseIRFile(InputFilename, Err, Context);

  if ( !M ) {
    Err.print(argv[0],errs());
    return 1;
  }

  for ( auto FS = M->begin(), FE = M->end(); FS != FE; FS++ ) {
    for ( auto BS = FS->begin(), BE = FS->end(); BS != BE; BS++ ) {
      for ( auto IS = BS->begin(), IE = BS->end(); IS != IE; IS++ ) {

	IS->dump();
	
	const GetElementPtrInst * gep = dyn_cast<GetElementPtrInst>(IS);
	const Constant * ref = dyn_cast<Constant>(IS);

	if ( gep ) {
	  outs() << "[-] Using the 4.0 IndexedType()\n";
	  computeGepOffset( gep );

	  outs() << "[+] Compare with our bridged implementation\n";
	  computeBridgedOffset( gep );
	}
	// end of actual iteration
      }
    }
  }

  return 0;
}
