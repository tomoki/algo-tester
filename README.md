# What's this?

This is small tester for competitive programmers.
Written in shellscript.

# HOW TO
At first,use bin/setup.sh to copy files.
I recommend you to add PATH to algo-tester/bin/.

```
$ somewhere/bin/setup.sh
$ ls
case  main.cpp  Makefile  test.sh
```

Next,make some testcases.

```
$ cd case
$ echo "1" > 1.in
$ echo "2" > 1.out
```

Write your program to main.cpp

```
$ your-favorite-editor main.cpp
```

And test it.
This command will compile main.cpp.

```
$ make test
```

## Automatically testing.
You must install inotify-tools.

```
$ make watch
```
