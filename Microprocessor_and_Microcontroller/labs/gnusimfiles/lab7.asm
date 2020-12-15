
        global    _start

	section .data
ds:     string1 db 01h,02h,03h,04h,05h
	string2 db 4 dup(0)

_start:  mov ax,data
	 mov ds,ax
	 mov es,ax
	 lea si,string1
	 lea di,string2
	 mov cx,05h
	 cld
	 rep movsb
	 int 3

