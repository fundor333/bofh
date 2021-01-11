# ohmybofh

BOFH fortunes plugin for oh-my-zsh. Perfectly suitable as MOTD.

**Maintainers**: [fundor333](https://github.com/fundor333) 

To use it add `bofh` to the plugins array in you zshrc file.

```zsh
plugins=(... bofh)
```

## Usage

| Command     | Description                     |
| ----------- | ------------------------------- |
| `bofh`      | Print random BOFH quote         |
| `bofh_cow`  | Print quote in cowthink         |

Example: output of `bofh_cow`:

```
 ____________________________________
( The new frame relay network hasn't )
( bedded down the software loop      )
( transmitter yet.                   )
 ------------------------------------
        o   ^__^
         o  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

## Requirements

- `cowsay` if using `bofh_cow`
