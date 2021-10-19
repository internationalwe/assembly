include print.inc

.data
va dword 5
vb dword 20
vc dword 198

.code
main proc
	mov edi, offset va
	mov eax, va
	neg eax
	imul eax, vb
	add eax, vc
	adc edx, 0
	mov ebx, 5
	idiv ebx
	mov [edi], eax
	
	mov eax,0
	call exitprocess
main endp
end main
	