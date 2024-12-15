```assembly
mov ax, bx
add ax, cx
mov dx, ax
; ... some other instructions ...
mov cx, 1000h
cmp cx, 65535 - ax ; Check if adding CX to AX will cause an overflow
ja overflow_handler ; Jump to overflow handler if overflow is detected
add ax, cx ; Add CX to AX only if no overflow will occur
jmp next_instruction ; Skip the overflow handler
overflow_handler:
; Handle the overflow condition (e.g., set error flag, use larger registers)
; ... appropriate error handling or alternative calculation ...
mov ax, 0 ;Example: Reset ax to zero
next_instruction:
; ... rest of the code ...
```