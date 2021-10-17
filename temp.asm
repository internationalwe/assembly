include print.inc
.data
val1 Word 2000h
val2 word 100h
.code
main proc
	mov eax, 30011110h
	mov ebx, 200h
	imul ebx
	call dumpregs
	mov eax, 0;
	call exitprocess
main endp
end main