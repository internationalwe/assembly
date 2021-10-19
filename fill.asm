;	fill.asm
include print.inc

.data
buffer byte 50 dup (?)

.code
main proc
	cld ;	DF=0	(forward)
	mov edi, OFFSET buffer
	mov ecx, LENGTHOF buffer
	mov al, 0FFh
	rep stosb ;	repeat	move	byte
	
	mov eax, 0
	call ExitProcess
main endp
end main
