; second2.asm
include print.inc
.data
dlist dword 1, 3, 5, 7, 9

.code
main proc
	mov eax, 5 ; eax = 5
	add eax, 6 ; eax = eax + 6
	mov dlist , eax ; dlist = eax
	mov esi, offset dlist ; start address
	mov ecx, 5 ; number of units
	mov ebx, 4 ; unit size
	call DumpMem
	mov eax, 0 ; exit 0
	call ExitProcess
main endp
end main