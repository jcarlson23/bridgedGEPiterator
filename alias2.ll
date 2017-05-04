; ModuleID = 'alias2.bc'
source_filename = "alias.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.MyStruct = type { i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: ssp uwtable
define void @_Z7NOALIASPvS_(i8*, i8*) #0 {
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: norecurse ssp uwtable
define i32 @main() #2 {
  %1 = alloca [2 x %struct.MyStruct], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %1, i64 0, i64 0
  %5 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %4, i32 0, i32 0
  store i32* %2, i32** %5, align 16
  %6 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %1, i64 0, i64 1
  %7 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %6, i32 0, i32 0
  store i32* %3, i32** %7, align 16
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %1, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 16
  %13 = bitcast i32* %12 to i8*
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x %struct.MyStruct], [2 x %struct.MyStruct]* %1, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  call void @_Z7NOALIASPvS_(i8* %13, i8* %19)
  ret i32 0
}

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 8.1.0 (clang-802.0.42)"}
