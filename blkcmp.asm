include print.inc

.data
source dword 1234h, 2345h, 3456h, 4567h
target dword 1234h, 2345h, 3456h, 4567h
;target	dword	1234h,	2345h,	3456h,	9999h
;target	dword	1234h,	1000h,	3456h,	4567h
msg_eq byte "Equal",0
msg_ne byte "Not	equal", 0
	
.code
main proc
	 cld ;	DF=0	(forward)
	 mov esi, OFFSET source
	 mov edi, OFFSET target
	 mov ecx, LENGTHOF source
	 repe cmpsd ;	repeat	compare	dword
	
	 mov edx, OFFSET msg_ne
	 jne L1
	 mov edx, OFFSET msg_eq
	L1:
	 call WriteString
	 mov eax, 0
	 call ExitProcess
main endp
end main