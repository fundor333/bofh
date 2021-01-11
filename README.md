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
Last login: Fri Jan 30 23:12:26 on ttys001
 ______________________________________
( When Chuck Norris plays Monopoly, it )
( affects the actual world economy.    )
 --------------------------------------
        o   ^__^
         o  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

## Requirements

- `fortune`
- `cowsay` if using `bofh_cow`

Available via homebrew, apt, ...
