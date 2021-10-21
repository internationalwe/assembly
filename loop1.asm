;	loop1.asm
include print.inc

.data
intarray WORD 1000h,2000h,3000h,4000h,5000h,8000h

.code
main proc
	mov edi, OFFSET intarray
	mov ecx, LENGTHOF intarray
	mov eax,0
	L1:
	add ax, [edi]
	add edi,2
	call DumpRegs
	loop L1
	
	mov eax, 0
	call ExitProcess
main endp
end main