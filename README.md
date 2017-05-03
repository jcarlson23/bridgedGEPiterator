### This is a relatively quick test case and including header for that provides a Bridged GEP iterator.

In LLVM 4.0, the GEP iterator no longer provides a `operator*()`.  In LLVM 3.8 this operator provided direct
access to the pointer.  With this failing and the `getIndexedType()` starting to enumerate through the elements
being pointed to, it's easiest (and hopefully cleanest) to simply create a new iterator type that bridges 
functionality while the changes surrounding the PointerType to Sequential type are made.  

Here's an example of running the code:

```
$ ./bin/testgep ../simple.bc 
  %1 = alloca %struct.MyStruct*, align 8
  %2 = load %struct.MyStruct*, %struct.MyStruct** %1, align 8
  %3 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %2, i32 0, i32 0
Use the 4.0 IndexedType()
%struct.MyStruct = type { i32, i8* }
i32 0
i32
i32 0
Compare with our bridged implementation
%struct.MyStruct*
i32 0
%struct.MyStruct*
i32 0
  store i32 4, i32* %3, align 8
  %4 = load %struct.MyStruct*, %struct.MyStruct** %1, align 8
  %5 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %4, i32 0, i32 1
Use the 4.0 IndexedType()
%struct.MyStruct = type { i32, i8* }
i32 0
i8*
i32 1
Compare with our bridged implementation
%struct.MyStruct*
i32 0
%struct.MyStruct*
i32 1
  store i8* null, i8** %5, align 8
  ret i32 0
```

The important point to note is that the *bridged* implementation now directly references the `%struct.MyStruct*` pointer, and not the struct itself, `%struct.MyStruct = type { i32, i8* }` which is dumped out via the `getIndexedType()` call.

The change in code is trivial, simply including the header:

```
#include "GEPTypeBridgeIterator.h"
```

And then we can iterate through via:

```
for ( bridge_gep_iterator gi = bridge_gep_begin(*V), ge = bridge_gep_end(*V); gi != ge; gi++ ) {
    (*gi)->dump();
    gi.getOperand()->dump();
  } 
```

Hope this is helpful...
