;	reverse.asm
include print.inc

.data
aName byte "Yonsei	University",0

.code
main proc
	mov ecx, LENGTHOF aName - 1
	mov esi,0
L1: movzx eax, aName[esi] ;	zero	extension
	push eax
	inc esi
	loop L1
	
	mov ecx, LENGTHOF aName - 1
	mov esi, 0
L2: pop eax
	mov aName[esi], al
	inc esi
	loop L2
	
	 mov eax, 0
	 call ExitProcess
main endp
end main