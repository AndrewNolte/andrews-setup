
# Andrew's setup

I clone this repo when moving to a new computer, and put in it all the things I need to be a productive programmer.

## Keybindings

I made my own bindings that have 80% of the functionality of vim/emacs but work on any text editor. It does this by leveraging the built in platform bindings: option+left on mac for example moves one word to the left.

They use caps key as a hyper key, the left hand for layers, and the right hand as sort of a arrow pad for intuitive navigation. It moves all the common operations on vim/emacs to the home row, and makes navigating a page more like a video game and less like trying to operate a 787. See [Bindings.md](Bindings.md) for more details.


## ZSH setup
I use zsh; here's a [good explanation why](https://medium.com/@harrison.miller13_28580/bash-vs-z-shell-a-tale-of-two-command-line-shells-c65bb66e4658)

### [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
Oh my zsh is like a package manageer for zsh. I use the default template .zshrc, with two extensions:
* git: basic stuff like what branch you're in, autocomplete, etc
* zsh-autosuggestions: super useful, will autocomplete to your last command with that prefix, and then you can tab over to accept

## [Vscode extensions and bindings](.vscode/extensions.json)

```json
{
    "recommendations": [
        // theme
        "dracula-theme.theme-dracula",
        // git enhancement
        "eamodio.gitlens",
        // intelligient autocomplete (not copilot though)
        "VisualStudioExptTeam.vscodeintellicode",
        // AI codegen
        "GitHub.copilot",
        // remote dev
        "ms-vscode-remote.remote-containers",
        "ms-vscode-remote.remote-ssh",
        "ms-vscode-remote.remote-ssh-edit",
        "ms-vscode-remote.remote-wsl",
        // languages & file types
        "janisdd.vscode-edit-csv", // csv
        "ms-azuretools.vscode-docker", // docker files
        "golang.go", // golang
        "yzhang.markdown-all-in-one", // markdown
        "ms-python.python", // python
        "ms-python.vscode-pylance", // also python
        "tomoki1207.pdf", // pdfs
    ]
}
```

If you clone this repo and open in vscode, it will prompt you to install these.

## [Rectangle (mac)](https://rectangleapp.com/)

This is useful for window management, i.e. snapping windows to split screen. Mac's default window management is not great, windows in my experience has this built in.

## Other good setup guides

* https://sourabhbajaj.com/mac-setup/VisualStudioCode/


