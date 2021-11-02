; call.asm
include print.inc

.code
main proc
	mov eax, 1
	mov ebx, 2
	mov ecx, 3
	call DumpRegs

	mov esi, offset DumpRegs
	call esi

	mov eax, 0
	call ExitProcess
main endp
end main
