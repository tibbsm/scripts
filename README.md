# scripts

a repo for various/random scripts. 

# Notes

## Safer commands/aliases

It will prompt you before moving files to the trash instead of deleting them straight away on macOS.

### Command flags

- `-i` flag prompts you to confirm before you do something.
- `-v` verbose

```sh
alias rm='trash -i'
alias mv='mv -i -v'
alias cp='cp -i -v'
alias ln='ln -i -v'
```

- `trash` command can be installed via homebrew or other package manager
- be careful though because you will use `rm` somewhere else and delete something permanently
- better to create a new alias to make it clear ie rmt='trash -i'
