;	arraysum.asm
include print.inc

.code

ArraySum proc
	mov eax,0 ;	set	the	sum	to	zero
L1: add eax,[esi] ;	add	each	integer	to	sum
	add esi,4 ;	point	to	next	integer
	loop L1 ;	repeat	for	array	size
	ret
ArraySum endp
	
.data
	array DWORD 1000h, 2000h, 3000h, 4000h, 5000h
	theSum DWORD ?
.code
main PROC
	 mov esi,OFFSET array
	 mov ecx,LENGTHOF array
	 call ArraySum
	 mov theSum,eax
	 call DumpRegs
	 mov eax, 0
	 call ExitProcess
main ENDP
end main