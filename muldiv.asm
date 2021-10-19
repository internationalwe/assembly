;	muldiv.asm
include print.inc

.data
var1 dword -10
var2 dword 6
result sdword ?

.code
	main proc
		mov eax,var1 ;	left	side
		mov ebx,5
		imul ebx ;	EDX:EAX	=	var1*5
		mov ebx,var2 ;	right	side
		sub ebx,3 ;	EBX	=	var2-3
		idiv ebx ;	EAX	=	(var1*5)/(var2-3)
		mov result,eax ;	-50	/	3	=	-16	...	-2
	
		mov eax, 0
		call ExitProcess
	
main endp
end  main