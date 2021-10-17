;	mov.asm
include	print.inc
.data
dvar dword ?, ?	
wvar word 8000h
.code
main proc
	;	dvar[0]	<-	wvar	(signed)
	movsx eax,	wvar	 ;	sign	extension
	mov dvar,	eax
	;	dvar[1]	<-	wvar	(unsigned)
	movzx eax,	wvar ;	zero	extension
	mov dvar+4,	eax
	;	print	dvar	array
	mov esi,	offset	dvar
	mov ebx,	4 ;	32-bit	unit	size
	mov ecx,	2 ;	two	units
	call DumpMem
	;	dvar1	<=>	dvar2	(exchange)
	mov eax,	dvar
	xchg eax,	dvar+4
	mov dvar,	eax
	;	print	dvar	array
	mov esi,	offset	dvar
	mov ebx,	4 ;	32-bit	unit	size
	mov ecx,	2 ;	two	units
	call DumpMem
	mov eax,	0 ;	exit	0
	call ExitProcess
main	endp
end	main