.data

message: 
	.asciz "Hello world\n"
	len = .-message

.text

.global _start

	_start:
		mov r0,#1
		ldr r1, =message
		ldr r2, =len
                mov r7, #4
		swi 0 ; will call read (5th syscall in r7,  with args fd,buf,count in r0 r1 r2)

		mov r7,#1
		swi 0

