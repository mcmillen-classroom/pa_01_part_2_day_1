# module for getFirstDayOfMonth(int, int)

    .global getFirstDayOfMonth
    
    .data

    .text
getFirstDayOfMonth:
    push %rbp
    mov %rsp, %rbp
    
    # TODO
    mov $0, %rax    # return 0
    
    pop %rbp
    ret
