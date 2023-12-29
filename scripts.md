# Useful Scripts

## Safer commands
It will prompt you before moving files to the trash instead of deleting them straight away on macOS.
One of the few aliases I always use is:
I've also added the -i flag to the following:
```sh
  alias rm='trash -i'
  alias mv='mv -i -v'
  alias cp='cp -i -v'
  alias ln='ln -i -v'
```
- be careful though bc you'll use rm somewhere else and delete it
- better to create a new alias to make it clear ie rmt='trash -i'
