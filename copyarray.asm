include print.inc


.data
source dword 100h,200h,300h,400h
target dword 4 dup(?)
	
.code
main PROC
	 mov esi,OFFSET source
	 mov edi, offset target
	 mov ecx, LENGTHOF source
	 call copyArray

	 mov eax, 0
	 call ExitProcess
main ENDP

copyArray proc
	mov eax,0 ;	set	the	sum	to	zero
	rep movsd
	ret
copyArray endp

end main