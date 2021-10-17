; first3.asm
include print.inc
.data 
sum dword 0
.code
main proc
	mov eax, 5 ; eax = 5
	add eax, 6 ; eax = eax + 6
	mov sum, eax ; sum = eax
	call DumpRegs ; display registers
	mov eax, 0 ; exit code = 0
	call ExitProcess
main endp
end main