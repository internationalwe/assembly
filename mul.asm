include print.inc
.data
va dword 3h
vb dword 0FFFF0000h

.code
main proc
	mov eax, va
	mul vb ;	edx:eax	=	va	*	vb	(unsigned)
	call DumpRegs
	
	mov eax, va
	imul vb ;	edx:eax	=	va	*	vb	(signed)
	call DumpRegs
	
	mov ebx, vb
	imul ebx, 3 ;	ebx	=	vb	*	3
	imul ecx, vb, 3 ;	ecx	=	vb	*	3
	call DumpRegs
	
	mov eax, 0
	call ExitProcess
main endp
end main