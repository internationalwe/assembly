;	operator.asm
include print.inc

.data
bval label byte
dval dword 12345678h
warr word 1, 2, 3, 4

.code
main proc
	 mov esi, offset dval
	 mov edi, offset warr
	
	 mov al, byte ptr [dval + 1] ;	AL=34h
	 ;movzx eax, al
	 mov bl, bval
	 ;movzx ebx, bl
	 mov cl, bval+1
	 ;movzx ecx, cl
	 call DumpRegs
	
	 mov eax, type warr
	 mov ebx, sizeof warr
	 mov ecx, lengthof warr
	 call DumpRegs
	
	 mov eax, 0 ;	exit	0
	 call ExitProcess
main endp
end main