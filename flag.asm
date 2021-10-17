;	flag.asm
include print.inc

.code
main proc
 mov al, 0FFh ;	AL=FFh	:	255	or	-1
 add al, 1 ;	AL=00	:	256	or	0	(CF=1)
 call DumpRegs

 mov al, 0 ;	AL=00	:	0
 sub al, 1 ;	AL=FFh	:	-1	(CF=1)
 call DumpRegs

 mov al, 127 ;	AL=7Fh
 add al, 1 ;	AL=80h	:	128	or	-128	(OF=1)
 call DumpRegs

 sub eax, eax ;	EAX=0,	CF=0
 call DumpRegs
 dec eax ;	EAX=FFFFFFFFh,	CF	unaffected
 call DumpRegs

 mov eax, 0 ;	exit	0
 call ExitProcess
main endp
end main