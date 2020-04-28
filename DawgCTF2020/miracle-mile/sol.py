from pwn import *
from math import *
conn = remote('ctf.umbccd.io', 5300)

for i in range(5): ## skip first 5 lines
    line = conn.recvline().decode('utf-8')
    print(line)

while True:
    numArr = []
    line = conn.recvline().decode('utf-8')
    if line[:4] == "Dang" or line[:4] == "flag": ## end of challenge
        break
    print(line)
    lineArr = line.split(' ')
    timeArr = lineArr[4].split(':')
    for i in range(len(timeArr)):
        timeArr[i] = int(timeArr[i])

    miles = float(lineArr[2])

    ## convert to seconds
    time = timeArr[2] + (timeArr[1] * 60) + (timeArr[0] * (60 ** 2))


    pace = time / miles

    seconds = pace % 60
    minutes = floor(pace / 60)

    hours = floor(minutes / 60)
    minutes = minutes - (hours * 60)

    totalTimeArr = [minutes, seconds]

    for i in range(len(totalTimeArr)):
        totalTimeArr[i] = int(totalTimeArr[i])
        totalTimeArr[i] = str(totalTimeArr[i])

    totalTime = ""

    for item in totalTimeArr:
        totalTime += item + ":"

    totalTime = totalTime[:-1] + "\n"

    conn.send(totalTime.encode('utf-8'))

    print(totalTime)

while True:
    line = conn.recvline().decode('utf-8')
    print(line)
