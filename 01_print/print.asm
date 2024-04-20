format ELF64 executable 3	; value 3 marks the executable for Linux system

;print
; code this part begins
mov eax, 1	; syscall #1 (write)
mov esi, input	; arg1 = msg
mov edx, 6	; arg2 = msg length
mov edi, 1	; arg3 = 1 (stdout)
syscall		; call write
; code this part ends

; exit
mov eax, 60     ; syscall #60 (exit)
mov edi, 0      ; arg 1 = 0 (OK)
syscall         ; call exit

input db "hello", 10, 0
