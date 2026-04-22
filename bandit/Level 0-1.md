### Task
---
- Establish ssh connection to the server using specified port
- Handling special filenames
- Reading files using Linux CLI
---

The password for the next level is stored in a file called readme located in the home directory. 
Use this password to log into bandit1 using SSH. 
Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game

---
File containing password is using speсial characters in its file name '-'.
Since '-' is interpreted by bash as a flag, I need to specify the path explicitly using ./

```
bandit1@bandit:~$ cat ./-
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```

