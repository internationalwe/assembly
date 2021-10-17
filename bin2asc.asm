;	bin2asc.asm
include print.inc

.data
value DWORD 12345678h
buffer BYTE 32 DUP(0),0 ;	binary	string

.code	
main proc
	 mov eax,value
	 mov ecx,32
	 mov esi,OFFSET buffer
	L1: shl eax,1 ;	CF	<-	MSB
	 mov BYTE PTR [esi],'0' ;	default	digit	0
	 call DumpRegs
	 jnc L2
	 mov BYTE PTR [esi],'1' ;	if	CF=1,	digit	1
	L2: inc esi
	 loop L1
	
	 mov edx, offset buffer
	 call WriteString
	 mov eax, 0
	 call ExitProcess
main endp
end main