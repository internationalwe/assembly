;	indirect.asm
include print.inc

.data
barr dword 10h, 20h, 30h
ptrD dword barr
.code
main proc
	mov esi, offset barr
	mov eax, [esi] ;	1st	element
	add esi, 4
	mov ebx, [esi] ;	2nd	element
	add esi, 4
	mov ecx, [esi] ;	3rd	element
	call DumpRegs
	
	mov esi, 2*4
	mov eax, barr[esi] ;	3rd	element
	mov edi, 2
	mov ebx, barr[edi*4] ;	3rd	element
	call DumpRegs
	
	mov ebx, ptrD ;	pointer	variable
	mov eax, ebx
	call DumpRegs
	
	mov eax, 0 ;	exit	0
	call ExitProcess
main endp
end main
