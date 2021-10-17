; second.asm
include print.inc
.data
sum dword 0
.code
main proc
	mov eax, 5 ; eax = 5
	add eax, 6 ; eax = eax + 6
	mov sum, eax ; sum = eax
;	call DumpRegs ; display registers
	mov esi, offset sum ; start address
	mov ecx, 1 ; number of units
	mov ebx, 4 ; unit size (B)
	call DumpMem 
	mov eax, 0 ; exit 0
	call ExitProcess
main endp
end main