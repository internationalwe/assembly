include print.inc

.data 
var1	SDWORD 6
var2	SDWORD 4
var3	SDWORD 5
X		SDWORD ?
.code
main proc
	mov eax,var1
	mov ebx,var2
	mov edx,var3

	cmp eax,ebx
	jng L1
	cmp eax,edx
	jng L1
	jmp L2
L1:
	cmp ebx,edx
	jng L3
	jmp L2
	
L2: mov X,8
	jmp next
L3: mov X,0
next:
	mov eax, X
	call DumpRegs

	mov eax,0
	Call ExitProcess
main endp
end main