# dotfiles

I am using [yadm](https://yadm.io/#) to manage my setting files.

Still I am a begginer to use it, so I note how to use from the beggining

## installation
I am using MacOS now, so I installed it by
```shell
brew install yadm
```

Also I have Linux machine, but I always use it remotely.
I like the MacOS interface, so it is enough.

## start to use yadm
From the beggining, I started like
```shell
cd
yadm init
yadm add <file>
yadm commit -m "message"
yadm remote add origin <url>
yadm push -u origin <local branch>:<remote branch>
```

This is almost the same with normal git repository.

I haven't try `yadm clone <url>` because I have only one MacOS machine, so when I start to manage different machines,
I will note about it.

## useful commands
These commands are used also for git management

```shell
# check the status
yadm status

# push/get the files
yadm fetch
yadm push
```

These commands are specific for yadm management

```shell
# check the managed files
yadm list -a
```

I will update it when I learn yaml more.
