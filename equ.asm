include print.inc
matrix1 equ 10 * 10
matrix2 equ matrix1
msg textequ <"system programming", 0ah, 0dh, 0>
movcx textequ <mov ecx, matrix2 + 5>
.data

list dword 1, 2, 3, 4, 5, 6
ListSize = ($ - list) / 4 ; size of list
; $ = current location

.code
main proc
	mov eax, matrix1
	mov ebx, ListSize
	
	movcx ; "mov ecx, 105"
	call DumpRegs
	mov eax, 0 ; exit 0
	call ExitProcess
main endp
end main