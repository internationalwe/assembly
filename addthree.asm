include print.inc

.data
var dword ?
.code
main PROC
	
	mov var, 10
	push 2
	push 3
	push var
	call addmul
	call WriteHex
	mov eax, 0
	call ExitProcess
main ENDP

addmul proc
	push ebp ;	set	the	sum	to	zero
	mov ebp, esp
	mov eax, [ebp+8]
	imul eax, [ebp+12]
	add eax, [ebp+16]
	pop ebp
	ret 12
addmul endp
	
end main