# module for getDays(buffer*, int, int)

    .global getDays
    
    .data

    .text
MSG:
    .asciz "first day of month: %d\n"

getDays:
    push %rbp
    mov %rsp, %rbp
    
    push %r12   # dayOfWeek
    push %r13   # save param %rdi (buffer)
    push %r14   # save param %rsi (mon)   
    push %r15   # save param %rdx (year)
    
    mov %rdi, %r13  # save buffer ptr
    mov %rsi, %r14  # save mon
    mov %rdx, %r15  # save year
    
    # get dayOfWeek
    call getFirstDayOfMonth
    
    # TODO: remove debug sprintf
    
    mov %r13, %rdi
    mov $MSG, %rsi
    mov %rax, %rdx
    
    xor %rax, %rax
    call sprintf
    xor %rax, %rax
    
    # TODO: complete calendar
    
    pop %r15
    pop %r14
    pop %r13
    pop %r12
    
    pop %rbp
    ret
    