;	loop2.asm
include print.inc

.data
source BYTE "This is the source string",0
target BYTE LENGTHOF source DUP(0)

.code
main proc
	mov esi,0 ;	index	register
	mov ecx,LENGTHOF source ;	loop	counter
L1:
	mov al,source[esi] ;	get	char	from	source
	mov target[esi],al ;	store	it	in	the	target
	movzx eax,al
	movzx ebx, target[esi]
	call DumpRegs
	inc esi ;	move	to	next	character
	loop L1

	mov eax, 0
	call ExitProcess
main endp
end main