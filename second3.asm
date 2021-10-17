; second3.asm
include print.inc

.data
sum dword 0
str1 byte "Welcome", 0dh, 0ah, 0 ; null terminated string

.code
main proc
	mov ebx, 5
	add ebx, 6
	mov sum, ebx
	mov eax, sum
	call WriteHex
	call Crlf ; newline
	mov edx, offset str1 ; edx=start addr of str1
	call WriteString ; write string
	mov eax, 0 ; exit 0
	call ExitProcess
main endp
end main