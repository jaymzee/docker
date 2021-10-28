# exploring mips processor architecture

## To enable other exec formats in docker containers run:
```
$ docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
```

## start a very minimal container that executes mips architecture
```
$ docker run -it -v /c/Users/James/source/docker/mips:/mnt/code mips64le/busybox
```

## start a new container for compiling C/C++ code to mips architecture
```
$ docker run -it -v /c/Users/James/source/docker/mips:/mnt/code muslcc/x86_64:mips64el-linux-musl
```
# MIPS Registers

register | assembly name | Comment
---------|---------------|------
r0       | $zero         | always 0
r1       | $at           | reserved for assembler
r2-r3    | $v0-$v1       | results
r4-r7    | $a0-$a3       | args
r8-r15   | $t0-$t7       | temporaries
r16-r23  | $s0-$s7       | saved
r24-r25  | $t8-$t9       | more temporaries
r26-r27  | $k0-$k1       | reserved by OS
r28      | $gp           | global pointer
r29      | $sp           | stack pointer
r30      | $fp           | frame pointer
r31      | $ra           | return address
f0-f31   | $f0-$f31      | floating point

# MIPS Instruction Encoding

|   Type   |  6 |  5 |  5 |  5 |   5   |   6   |           Comment           |
|:--------:|:--:|:--:|:--:|:--:|:-----:|:-----:|:----------------------------|
| R-format | op | rs | rt | rd | shamt | funct | arithmetic instructon fmt   |

|   Type   | 6  | 5  | 5  |         16         |           Comment           |
|:--------:|:--:|:--:|:--:|:------------------:|:----------------------------|
| I-format | op | rs | rt | address/immediate  | xfer/branch/immed format    |

|   Type   | 6  |              26              |           Comment           |
|:--------:|:--:|:----------------------------:|:----------------------------|
| J-format | op |        target address        | jump instruction format     |


