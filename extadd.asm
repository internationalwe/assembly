include print.inc

.data
value1 DWORD 0def0h, 9abch, 5678h, 1234h
value2 DWORD 5678h, 1234h, 0def0h, 9abch
result DWORD 4 dup (?)

.code
	main proc
	 mov esi, 0
	 mov ecx, LENGTHOF value1
	 clc ;	CF	=	0
	
	L1: mov eax, value1[esi] ;	value1's	digit(32-bit)
	 adc eax, value2[esi] ;	value2's	digit(32-bit)
	 pushfd ;	save	CF	
	 mov result[esi],eax ;	store	partial	sum
	 add esi,4 ;	next	index
	 popfd ;	restore	CF
	 loop L1 ;	repeat	the	loop
	
	 mov eax, 0
	 call ExitProcess
	
main endp
end main