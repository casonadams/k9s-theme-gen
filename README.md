# k9s-theme-gen

Simple k9s theme generator

This only works if using alacritty, and have themes defined.

## example install

```sh
zinit wait lucid for \
  OMZL::key-bindings.zsh \
  OMZL::history.zsh \
  OMZP::git \
  casonadams/alacritty-shell \
  casonadams/k9s-theme-gen \
  ;
```

**NOTE** recommended to install `yq` manually see manual install / `yq` section
for more information. Other wise an attempt will be made to auto install the
`yq` binary. Not supported for all platforms

## manual install

### yq

#### OSX

```sh
brew install yq
```

#### Linux / Other

[yq](https://github.com/mikefarah/yq/releases) is used to parse the
alacritty.yml file and needs to be installed in the `$PATH`.

#### example install command for x86_64 linux

**NOTE** `~/.local/bin/` needs to be in the `$PATH`

```sh
curl -L https://github.com/mikefarah/yq/releases/download/v4.21.1/yq_linux_amd64 -o ~/.local/bin/yq
chmod +x ~/.local/bin/yq
```
