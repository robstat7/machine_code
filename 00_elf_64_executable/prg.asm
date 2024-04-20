; code this part begins

format ELF64 executable 3	; value 3 marks the executable for Linux system

; exit
mov eax, 60	; syscall #60 (exit)
mov edi, 0      ; arg 1 = 0 (OK)
syscall         ; call exit

; code this part ends
