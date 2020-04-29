# I only see in cubes

![](chall.png)

We are given a [7zip archive](chall.7z). Inside the archive is a minecraft world.

The challenge text says that we have to find all of Jubie's books. I assumed that the books contained parts of the flag.

I decided to run binwalk on all the files in the world directory to see what I could find.

The most interesting thing I found was in region.

```
$ ls
r.0.0.mca  r.0.-1.mca  r.0.1.mca  r.0.2.mca  r.-1.0.mca  r.1.0.mca  r.-1.-1.mca  r.-1.1.mca  r.1.1.mca  r.-1.2.mca  r.2.0.mca  r.2.1.mca
```

It contained a bunch of files, and when I ran binwalk on one of them, it looked like there was a lot of compressed data in it:

```
$ binwalk r.0.0.mca

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
8197          0x2005          Zlib compressed data, default compression
12293         0x3005          Zlib compressed data, default compression
16389         0x4005          Zlib compressed data, default compression
20485         0x5005          Zlib compressed data, default compression
24581         0x6005          Zlib compressed data, default compression
28677         0x7005          Zlib compressed data, default compression
32773         0x8005          Zlib compressed data, default compression
36869         0x9005          Zlib compressed data, default compression
40965         0xA005          Zlib compressed data, default compression
45061         0xB005          Zlib compressed data, default compression
49157         0xC005          Zlib compressed data, default compression
53253         0xD005          Zlib compressed data, default compression
57349         0xE005          Zlib compressed data, default compression
61445         0xF005          Zlib compressed data, default compression
65541         0x10005         Zlib compressed data, default compression

...

4947973       0x4B8005        Zlib compressed data, default compression
4956165       0x4BA005        Zlib compressed data, default compression
4964357       0x4BC005        Zlib compressed data, default compression
4972549       0x4BE005        Zlib compressed data, default compression
4980741       0x4C0005        Zlib compressed data, default compression
4988933       0x4C2005        Zlib compressed data, default compression
4997125       0x4C4005        Zlib compressed data, default compression
5005317       0x4C6005        Zlib compressed data, default compression
5013509       0x4C8005        Zlib compressed data, default compression
5021701       0x4CA005        Zlib compressed data, default compression
5029893       0x4CC005        Zlib compressed data, default compression
5038085       0x4CE005        Zlib compressed data, default compression
5046277       0x4D0005        Zlib compressed data, default compression
5054469       0x4D2005        Zlib compressed data, default compression
5070853       0x4D6005        Zlib compressed data, default compression
```

I found out that if you use the `-e` flag in binwalk, it will extract all the files it finds, so I ran this command to extract all the files in region.

```
$ binwalk r.*.mca -e
```

The decompression takes a while, but eventually you get this:

```
$ ls
r.0.0.mca             _r.0.1.mca.extracted  r.1.0.mca              r.-1.1.mca              _r.1.1.mca.extracted   _r.2.0.mca.extracted
_r.0.0.mca.extracted  r.0.2.mca             _r.-1.0.mca.extracted  r.1.1.mca               r.-1.2.mca             r.2.1.mca
r.0.-1.mca            _r.0.2.mca.extracted  _r.1.0.mca.extracted   _r.-1.-1.mca.extracted  _r.-1.2.mca.extracted  _r.2.1.mca.extracted
r.0.1.mca             r.-1.0.mca            r.-1.-1.mca            _r.-1.1.mca.extracted   r.2.0.mca
$ cd _r.0.0.mca.extracted/
$ ls
100005       16B005.zlib  1D005        23C005.zlib  2AA005       310005.zlib  371005       3E8005.zlib  458005       4C4005.zlib  9F005
100005.zlib  16D005       1D005.zlib   23E005       2AA005.zlib  312005       371005.zlib  3EA005       458005.zlib  4C6005       9F005.zlib
10005        16D005.zlib  1D2005       23E005.zlib  2AB005       312005.zlib  372005       3EA005.zlib  45A005       4C6005.zlib  A005
10005.zlib   16F005       1D2005.zlib  240005       2AB005.zlib  314005       372005.zlib  3EC005       45A005.zlib  4C8005       A005.zlib
102005       16F005.zlib  1D3005       240005.zlib  2AC005       314005.zlib  374005       3EC005.zlib  45B005       4C8005.zlib  A1005
102005.zlib  17005        1D3005.zlib  24005        2AC005.zlib  316005       374005.zlib  3EE005       45B005.zlib  4CA005       A1005.zlib
104005       17005.zlib   1D4005       24005.zlib   2AD005       316005.zlib  376005       3EE005.zlib  45C005       4CA005.zlib  A2005
104005.zlib  171005       1D4005.zlib  241005       2AD005.zlib  318005       376005.zlib  3F0005       45C005.zlib  4CC005       A2005.zlib
...
```

`binwalk` stores each extracted file with its hex position as its name, and even saves the original file as well.

We don't need those `*.zlib` files, so we can just delete them.

```
$ rm _r.*.mca.extracted/*.zlib
```

To make things easier, I decided to combine all these files into one file, so I could just search them later on with `grep`

```
$ cat _r.*.mca.extracted/* > combined
```

I then used `grep` to search through all the files for the flag. The `-a` flag tells grep to treat the binary file as a normal text file.

```
$ cat combined | grep -a rtcp{
tag	page{"text":"rtcp{D0n't_d1g"titlBook onauthorJubiresolvedItemDropChance?UUIDMost�Y3S LI
                                                                                               	Pos@D@@R�@fFire��TileYidminecraft:item_frameTileX(TileZ�	isLightOn		TileTicks      Sections
tag	page{"text":"rtcp{D0n't_d1g"titlBook onauthor	dotmicroresolvedItemDropChance?UUIDMost�Y3S LI
                                                                                                      	Pos@D@@R�@fFire��TileYidminecraft:item_frameTileX(TileZ�	isLightOn		TileTicks      Sections
tag	page{"text":"rtcp{D0n't_d1g"titlBook onauthor	dotmicroresolvedItemDropChance?UUIDMost�Y3S LI
                                                                                                      	Pos@D@@R�@fFire��TileYidminecraft:item_frameTileX(TileZ�	isLightOn		TileTicks      Sections
```

`rtcp{D0n't_d1g`

Well we got the first part of the flag. What about the others?

I did another search:

```
$ cat combined | grep -a page
tag	page{"text":"rtcp{D0n't_d1g"titlBook onauthorJubiresolvedItemDropChance?UUIDMost�Y3S LI
                                                                                               	Pos@D@@R�@fFire��TileYidminecraft:item_frameTileX(TileZ�	isLightOn		TileTicks      Sections
tag	page{"text":"rtcp{D0n't_d1g"titlBook onauthor	dotmicroresolvedItemDropChance?UUIDMost�Y3S LI
                                                                                                      	Pos@D@@R�@fFire��TileYidminecraft:item_frameTileX(TileZ�	isLightOn		TileTicks      Sections
tag	page{"text":"rtcp{D0n't_d1g"titlBook onauthor	dotmicroresolvedItemDropChance?UUIDMost�Y3S LI
                                                                                                      	Pos@D@@R�@fFire��TileYidminecraft:item_frameTileX(TileZ�	isLightOn		TileTicks      Sections
_Nm	Pos@_�@@|@�rFire��TileYidminecraft:item_frameTileX~TileZ�ance?UUisLightOn       	TileTicks      Sections
tag	page{"text":"d0wn$}"title
```

`d0wn$}`

We have the last part now! But how to get the rest?

Well, I was stumped. I tried everything, but I couldn't get it. One of my teammates figured out that the books had different names, like `Book one`, `Book two`, etc. I trued searching that with grep again, but nothing useful:

```
$ cat combined | grep "Book two" -a
_Nm	Pos@_�@@|@�rFire��TileYidminecraft:item_frameTileX~TileZ�anisLightOnst�YI       TileTicks      Sections
```

I didn't know why it wasn't showing up! I think it's the way grep was processing the binary dump or something like that, but I don't know.

But I guess the best solution is usually the simplest:

One of my teammates literally just searched the whole file using `Ctrl-F` with Notepad++ and just searched for `Book two`, and that just worked! I don't know how, but it just did. It really doesn't matter, in the end we got the flag. :smile:

Flag: `rtcp{D0n't_d1g_*str4ight_d0wn$}`
