;	sumof.asm
include print.inc

.data
theSum DWORD ?

.code
main proc
	mov eax, 1000h
	mov ebx, 2000h
	mov ecx, 3000h
	call SumOf
	mov theSum, eax
	
	mov eax, 0
	call ExitProcess
main endp
	
	;---------------------------------------------------------
	;	SumOf	:	세	정수의	합	계산
	;			input	:	EAX,	EBX,	ECX,	the	three	integers
	;			output:	EAX	=	sum,	and	the	status	flags
	;---------------------------------------------------------
SumOf proc
	 add eax,ebx
	 add eax,ecx
	 ret
SumOf endp
	
end main