# Useful Scripts

## Safer commands

It will prompt you before moving files to the trash instead of deleting them straight away on macOS.
- `trash` command can be installed via homebrew, etc.

```sh
alias rm='trash -i'
alias mv='mv -i -v'
alias cp='cp -i -v'
alias ln='ln -i -v'
```

- be careful though because you will use `rm` somewhere else and delete something permanently
- better to create a new alias to make it clear ie rmt='trash -i'
