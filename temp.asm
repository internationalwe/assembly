include print.inc
.data
val1 Word 2000h
val2 word 100h
align 16
arrayW wORD 1000h,2000h,3000h
array SWORD -3,-6,-1,-10,10,30,40,4
sentinel SWORD 0

.code
main proc
	mov ax , FFFFh;
	add ax, 1
	call dumpregs
	mov eax, 0;
	call exitprocess
main endp
end main