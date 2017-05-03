; ModuleID = 'simple.bc'
source_filename = "simple.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.MyStruct = type { i32, i8* }

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca %struct.MyStruct*, align 8
  %2 = load %struct.MyStruct*, %struct.MyStruct** %1, align 8
  %3 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %2, i32 0, i32 0
  store i32 4, i32* %3, align 8
  %4 = load %struct.MyStruct*, %struct.MyStruct** %1, align 8
  %5 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %4, i32 0, i32 1
  store i8* null, i8** %5, align 8
  ret i32 0
}

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 8.1.0 (clang-802.0.42)"}
