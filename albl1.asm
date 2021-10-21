include print.inc
.data
array dword 10h, 20h, 30h, 40h
.code
main proc
	mov esi, offset array
	mov ecx, 4
	mov ebx, 4
	call DumpMem ; array print
	mov eax, array ; eax = 10
	xchg array+4, eax ; array[1] = 10, eax = 20
	xchg array+8, eax ; array[2] = 20, eax = 30
	xchg array+12, eax ; array[3] = 30, eax = 40
	xchg array, eax ; array[0] = 50, eax = 10
	mov esi, offset array 
	mov ecx, 4
	mov ebx, 4
	call DumpMem
	mov eax,	0 ;	exit	0
	call ExitProcess
main endp
end main