;	strcpy.asm
include print.inc

.data
source byte "Assembly	language", 0
target byte LENGTHOF source DUP(?)

.code
main proc
	 cld ;	DF=0	(forward)
	 mov esi, OFFSET source
	 mov edi, OFFSET target
	 mov ecx, LENGTHOF source ;	set	REP	count
	 rep movsb ;	repeat	move	byte
	
	 mov edx, OFFSET target
	 call WriteString
	 mov eax, 0
	 call ExitProcess
main endp
end main