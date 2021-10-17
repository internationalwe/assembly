include print.inc

.data
R dword ?
X dword 26
Y dword 30
Z dword 40

.code
main proc
	mov		eax, X	; EAX = -X			26
	neg		eax		; EAX = -EAX		-26
	mov		ebx, Y	; ebx = 30
	sub		ebx, Z	; ebx = ebx - Z		-10
	add		eax, ebx; eax = ebx + eax	36
	mov		R, eax	; R = eax			-36

	mov		eax, R	; eax = R			-36
	call	WriteHeX ; print eax
	mov		eax, 0
	call ExitProcess
main endp
end main