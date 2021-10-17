; first assembly language program
include print.inc
.data
sum dword 0
.code
main proc
	mov eax, 5 ; eax = 5
	add eax, 6 ; eax = eax + 6
	mov sum, eax ; sum = eax
	mov eax, 0 ; exit code = 0
	call ExitProcess
main endp
end main