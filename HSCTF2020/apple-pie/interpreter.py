with open(input("File to interpret? ")) as file:
    code = file.read()

code = code.replace("Good luck reading this lol u", "") ## don't care about start of program

code = code.split()

for i in range(len(code)):
    if i != 0:
        code[i] = code[i][1:] ## remove those dumb ending characters, those are fucking useless
###

vR = False ## return w/ variable

vars = [] ## name first, then operand
loops = [] ## last is innest loop, first is outtest loop
ip = 0

def appleEval(ins):
    global ip
    global vR
    c = ins[0] ## command
    o = ins[1:] ## operands
    if c == 'C': ## end of loop
        loop = loops.pop()
        if loop[1] > 1:
            loop[1] -= 1
            ip = loop[0]
        loops.append(loop)
    elif len(ins) == 1:
        vR = False
        return ins
    elif c == 'A': ## print to screen
        op1 = appleEval(o) ## operand 1
        if vR:
            op1 = str(op1)
            print(op1[::-1], end='')
            vR = False
        else:
            print(chr(ord(op1) - 1), end='')
    elif c == 'D': ## set var
        op = o.split('D') ## operands
        for i in range(len(op)):
            op[i] = appleEval(op[i])
        if op[0] in vars:
            vars[vars.index(op[0]) + 1] = op[1]
        else:
            vars.append(op[0])
            vars.append(op[1])
    elif c == 'E': ## Eepbeep
        o = o[len("epbeepQ"):] ## don't care about that eepbeep
        o = int(o, 3) ## input is in base 3, don't ask me why
        loops.append([ip, o]) ## first elem is where to jump to, second is when
    elif c == 'F': ## operations
        op = o.split('F') ## operands
        return eval(str(appleEval(op[0])) + str(appleEval(op[1])) + str(appleEval(op[2])))
    elif c == 'H': ## clear variable
        o = o[len("44"):]
        vars[vars.index(o) + 1] = 0 ## clear with 0
    elif c == '$': ## if varaible given
        vR = True
        varname = o.replace('F', '')
        #print(varname, '=', vars[vars.index(varname) + 1])
        if varname in vars:
            return vars[vars.index(varname) + 1] ## return variable value
        else:
            return 'L' ## if there was an error, return the letter L
    else:
        return c[0] ## return character

while code[ip] != '!!!': # terminating instruction
    appleEval(code[ip])
    ip += 1
