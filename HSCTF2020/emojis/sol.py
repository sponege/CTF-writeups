enc = "xB^r_En}INc4v" # input("Encoded flag?")
enc = [ord(i) for i in enc] ## convert to list, so we can work with it
enc = [1337] + enc ## I just wanna have the string start at one you know not zero no need to confuse myself

# sub char10  char2 // in solution script, add char 2 to char 10

enc[10] += enc[2] # done

# add char9 int8
# sub char1  char3
# sub char5  char12
# add char3  char3
# sub char8  char12

enc[8] += enc[12]
enc[3] /= 2 # division just fixes things
enc[5] += enc[12]
enc[1] += enc[3]
enc[9] -= 8

# jmpIfEq char11 int4
# add char7  char9

if enc[11] != 4:
    enc[7] -= enc[9]

# add char12 int1
# sub char11 int8
# add char8  char9
# sub char6  char7

enc[6] += enc[7]
enc[8] -= enc[9]
enc[11] += 8
enc[12] -= 1

# jmpIfEq char5  char10
# add char5  char10

if enc[5] != enc[10]: ## gotta be careful with these things you know
    enc[5] -= enc[10] ## this doesn't even work right, I'm confused


# jmpIfEq char4  char6
# load char14 input

# this part doesn't matter tbh

# add char2  char8
# sub char2  char4
# add char1  char12
# add char3 int4
# add char4 int2

enc[4] -= 2
enc[3] -= 4
enc[1] -= enc[12]
enc[2] += enc[4]
enc[2] -= enc[8]

# load tmpvar char4
# sub char3 int8
# load char4  char13
# load char13  tmpvar

# alright, we got ourself a temporary variable
# oh! i see! the tmpvar is used in a swap!
# char4 and char13 are both swapped.

tmpvar = enc[13]
enc[13] = enc[4]
enc[4] = tmpvar

# swapped!
# also, we have to add 8 to char3 as well, let's not forget that!

enc[3] += 8

# oh crap there is a jump before it

# jmpIfEq char5  char10
# load tmpvar char4
# sub char3 int8
# load char4  char13
# load char13  tmpvar

# tmpvar cannot be a null!
# assuming this char5 and char10 cannot be equal! bc there are no null chars in the flag ya dummy

# jmpIfEq char2  char13
# sub char12  char1
# jmpIfEq char2  char6
# load char3  char8
# sub char2  char5
# add char10  char7

enc[10] -= enc[7]
enc[2] += enc[5]

if enc[2] != enc[6]:
    print("Aw crap we don't know what char3 is crap")

if enc[2] != enc[13]:
    enc[12] += enc[1]

flag = ''

for c in enc:
    flag += chr(int(c))

print(flag)
