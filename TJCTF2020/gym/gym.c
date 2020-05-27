int eat_healthy(void)
{
  return 4;
}

int do_pushup(void)
{
  return 1;
}

int go_run(void)
{
  return 2;
}

int go_sleep(void)
{
  return 3;
}



undefined8 main(void)

{
  int iVar1;
  FILE *__stream;
  long in_FS_OFFSET;
  int local_ac;
  uint local_a8;
  char local_98 [64];
  char local_58 [72];
  long local_10;

  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  local_ac = 0xd3;
  setbuf(stdout,(char *)0x0);
  setbuf(stdin,(char *)0x0);
  setbuf(stderr,(char *)0x0);
  printf("I\'m currently %d lbs. Can I be exactly 180? Help me out!",0xd3);
  local_a8 = 1;
  do {
    if (7 < (int)local_a8) {
      sleep(3);
      if (local_ac == 0xb4) {
        __stream = fopen("flag.txt","r");
        if (__stream == (FILE *)0x0) {
          puts("Flag File is Missing. Contact a moderator if running on server.");
                    /* WARNING: Subroutine does not return */
          exit(0);
        }
        fgets(local_58,0x40,__stream);
        puts("Congrats on reaching your weight goal!");
        printf("Here is your prize: %s\n",local_58);
      }
      else {
        puts("I didn\'t reach my goal :(");
      }
      if (local_10 == *(long *)(in_FS_OFFSET + 0x28)) {
        return 0;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    printf("\n-------------------------");
    printf("\nToday is day %d.\n",(ulong)local_a8);
    printf("\nChoose an activity:");
    printf("\n[1] Eat healthy");
    printf("\n[2] Do 50 push-ups");
    printf("\n[3] Go for a run.");
    printf("\n[4] Sleep 8 hours.");
    puts("\n");
    fgets(local_98,4,stdin);
    iVar1 = atoi(local_98);
    if (iVar1 == 2) {
      iVar1 = do_pushup((ulong)local_a8);
      local_ac = local_ac - iVar1;
    }
    else {
      if (iVar1 < 3) {
        if (iVar1 == 1) {
          iVar1 = eat_healthy((ulong)local_a8);
          local_ac = local_ac - iVar1;
        }
      }
      else {
        if (iVar1 == 3) {
          iVar1 = go_run((ulong)local_a8);
          local_ac = local_ac - iVar1;
        }
        else {
          if (iVar1 != 4) goto LAB_00100b5d;
        }
        iVar1 = go_sleep((ulong)local_a8);
        local_ac = local_ac - iVar1;
      }
    }
LAB_00100b5d:
    local_a8 = local_a8 + 1;
  } while( true );
}
