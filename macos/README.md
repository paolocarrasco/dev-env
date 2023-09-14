# MacOS

## How to install these tools?

Clone this repository, and execute this command (at this directory):

```shell
./install-tools.sh
```

## Tools to install

### Command Line Tools

- HomeBrew
- GPG Suite
- Docker CLI (not Docker Desktop)
- Colima (Docker Desktop alternative)
- iTerm 2
- Tmux
- Tmuxp
- PowerLine (shell & vim status)
- AWS-CLI
- ranger (file manager)
- bat (cat with syntax highlight)
- eza (modern ls)
- delta (modern diff for git)
- jq (json parser)
- bottom (modern top)

### Communication

- Chrome
- Zoom

### IDEs

- Jetbrains Toolbox
- Visual Studio Code

### Languages

- Node & Yarn & NVM
- Python & Pipenv
- Java & jEnv

### Database clients

- PostgreSql
- MySql
- MongoDB

### Joy

- TuneIn
- Kindle

### Utilities

- Warp (AI terminal)
- Rectangle
- Caffeine
- 1Password
- KeyCastr (to cast keystrokes)
- MDP (presentation utility)

## How to create an SSH key?

If using 1Password 8, you can use the SSH key generator.
Check the [documentation](https://blog.1password.com/1password-ssh-agent/).

Otherwise, follow the steps suggested by
[GitHub](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

## How to config a GPG key?

Execute the command:

```shell
./create-gpg-key.sh
```
