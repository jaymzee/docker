# ARM 64 bit calling convention

## Register Usage
Registers | Function
----------|----------------------------------------------------------
x0-x7     | args/rv/scratch
x8-x18    | scratch, x16-18 are sometimes reserved, x8 is syscall num
x19-x28   | callee-saved regs
x29 (FP)  | frame pointer
x30 (LR)  | link register
x31 (SP)  | stack pointer

# ARM64 ABI (AArch64)
syscall arguments are passed in x0-x5
syscall number is passed in w8 (lower 32 bits of x8)
if any values are returned, they will be in x0 and x1
control is passed to the kernel via the svc #0 instruction
