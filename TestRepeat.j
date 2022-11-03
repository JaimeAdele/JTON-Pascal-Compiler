.class public TestRepeat
.super java/lang/Object

.field private static _sysin Ljava/util/Scanner;
.field private static i I
.field private static j I

;
; Runtime input scanner
;
.method static <clinit>()V

	new	java/util/Scanner
	dup
	getstatic	java/lang/System/in Ljava/io/InputStream;
	invokespecial	java/util/Scanner/<init>(Ljava/io/InputStream;)V
	putstatic	TestRepeat/_sysin Ljava/util/Scanner;
	return

.limit locals 0
.limit stack 3
.end method

;
; Main class constructor
;
.method public <init>()V
.var 0 is this LTestRepeat;

	aload_0
	invokespecial	java/lang/Object/<init>()V
	return

.limit locals 1
.limit stack 1
.end method

;
; MAIN
;
.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String;
.var 1 is _start Ljava/time/Instant;
.var 2 is _end Ljava/time/Instant;
.var 3 is _elapsed J

	invokestatic	java/time/Instant/now()Ljava/time/Instant;
	astore_1

;
; 007 i:=1
;
	iconst_1
	putstatic	TestRepeat/i I
;
; 009 REPEATwriteln('i = ',i);i:=i+1;UNTILi>5
;
L001:
;
; 010 writeln('i = ',i)
;
	getstatic	java/lang/System/out Ljava/io/PrintStream;
	ldc	"i = %d\n"
	iconst_1
	anewarray	java/lang/Object
	dup
	iconst_0
	getstatic	TestRepeat/i I
	invokestatic	java/lang/Integer/valueOf(I)Ljava/lang/Integer;
	aastore
	invokevirtual	java/io/PrintStream/printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
	pop
;
; 011 i:=i+1
;
	getstatic	TestRepeat/i I
	iconst_1
	iadd
	putstatic	TestRepeat/i I
	getstatic	TestRepeat/i I
	iconst_5
	if_icmpgt	L003
	iconst_0
	goto	L004
L003:
	iconst_1
L004:
	ifne	L002
	goto	L001
L002:
;
; 014 writeln
;
	getstatic	java/lang/System/out Ljava/io/PrintStream;
	invokevirtual	java/io/PrintStream.println()V
;
; 016 i:=1
;
	iconst_1
	putstatic	TestRepeat/i I
;
; 018 REPEATj:=10;REPEATwriteln('i = ',i,', j = ',j);j:=j+10UNTILj>30;i:=i ...
;
L005:
;
; 019 j:=10
;
	bipush	10
	putstatic	TestRepeat/j I
;
; 021 REPEATwriteln('i = ',i,', j = ',j);j:=j+10UNTILj>30
;
L007:
;
; 022 writeln('i = ',i,', j = ',j)
;
	getstatic	java/lang/System/out Ljava/io/PrintStream;
	ldc	"i = %d, j = %d\n"
	iconst_2
	anewarray	java/lang/Object
	dup
	iconst_0
	getstatic	TestRepeat/i I
	invokestatic	java/lang/Integer/valueOf(I)Ljava/lang/Integer;
	aastore
	dup
	iconst_1
	getstatic	TestRepeat/j I
	invokestatic	java/lang/Integer/valueOf(I)Ljava/lang/Integer;
	aastore
	invokevirtual	java/io/PrintStream/printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
	pop
;
; 023 j:=j+10
;
	getstatic	TestRepeat/j I
	bipush	10
	iadd
	putstatic	TestRepeat/j I
	getstatic	TestRepeat/j I
	bipush	30
	if_icmpgt	L009
	iconst_0
	goto	L010
L009:
	iconst_1
L010:
	ifne	L008
	goto	L007
L008:
;
; 026 i:=i+1
;
	getstatic	TestRepeat/i I
	iconst_1
	iadd
	putstatic	TestRepeat/i I
	getstatic	TestRepeat/i I
	iconst_2
	if_icmpgt	L011
	iconst_0
	goto	L012
L011:
	iconst_1
L012:
	ifne	L006
	goto	L005
L006:

	invokestatic	java/time/Instant/now()Ljava/time/Instant;
	astore_2
	aload_1
	aload_2
	invokestatic	java/time/Duration/between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;
	invokevirtual	java/time/Duration/toMillis()J
	lstore_3
	getstatic	java/lang/System/out Ljava/io/PrintStream;
	ldc	"\n[%,d milliseconds execution time.]\n"
	iconst_1
	anewarray	java/lang/Object
	dup
	iconst_0
	lload_3
	invokestatic	java/lang/Long/valueOf(J)Ljava/lang/Long;
	aastore
	invokevirtual	java/io/PrintStream/printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
	pop

	return

.limit locals 6
.limit stack 7
.end method
