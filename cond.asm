include print.inc

.data
source BYTE "abcdef	#PQRSTU@!",0
target BYTE LENGTHOF source DUP(0)

.code
main proc
	 mov esi,0 ;	index	register
	 mov ecx, LENGTHOF source ;	loop	counter
	L1:
	 mov al, source[esi] ;	get	char	from	source
	
	 mov bl, al
	 and bl, 11011111b ;	bit	5	=	0	(to	uppercase)
	 cmp bl, 'A'
	 jl L2 ;	skip	if	<	'A'
	 cmp bl, 'Z'
	 jg L2 ;	skip	if	>	'Z'
	
	 test al, 00100000b ;	test	bit	5
	 jz upper ;	jump	if	uppercase	
	 and al, 11011111b ;			to	lowercase
	 jmp L2
	upper:
	 or al, 00100000b ;			to	uppercase
	L2:
	 mov target[esi],al ;	store	it	in	the	target
	 inc esi ;	move	to	next	character
	 loop L1
	
	 mov eax, 0
	 call ExitProcess
main endp
end main