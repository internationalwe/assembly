include print.inc

.data
var1 SDWORD 5
var2 SDWORD 3
X SDWORD ?
.code
main proc
	mov eax, var1
	mov ebx, var2
	cmp eax, ebx
	jng L1
	mov X,1
	jmp L2
L1:	mov X,2
L2:
	mov eax, X
	call DumpRegs

	mov eax,0
	call ExitProcess
main endp
end main
