# Manage dotfile symlinks with explicit per-config targets.
CONFIG_HOME ?= $(HOME)/.config

.PHONY: all install bat git tmux mise zsh ghostty sheldon vim

all: install

install: bat git tmux mise zsh ghostty sheldon vim

bat:
	@mkdir -p "$(CONFIG_HOME)/bat"
	ln -vsf "$(CURDIR)/bat/config" "$(CONFIG_HOME)/bat/config"

git:
	@mkdir -p "$(CONFIG_HOME)/git"
	ln -vsf "$(CURDIR)/git/config" "$(CONFIG_HOME)/git/config"
	ln -vsf "$(CURDIR)/git/ignore" "$(CONFIG_HOME)/git/ignore"

tmux:
	@mkdir -p "$(CONFIG_HOME)/tmux"
	ln -vsf "$(CURDIR)/tmux/tmux.conf" "$(CONFIG_HOME)/tmux/tmux.conf"

mise:
	@mkdir -p "$(CONFIG_HOME)/mise"
	ln -vsf "$(CURDIR)/mise/config.toml" "$(CONFIG_HOME)/mise/config.toml"

zsh:
	ln -vsf "$(CURDIR)/zsh/zshrc" "$(HOME)/.zshrc"
	ln -vsf "$(CURDIR)/zsh/zprofile" "$(HOME)/.zprofile"

ghostty:
	@mkdir -p "$(CONFIG_HOME)/ghostty"
	ln -vsf "$(CURDIR)/ghostty/config" "$(CONFIG_HOME)/ghostty/config"
	ln -vsfn "$(CURDIR)/ghostty/themes" "$(CONFIG_HOME)/ghostty/themes"

sheldon:
	@mkdir -p "$(CONFIG_HOME)/sheldon"
	ln -vsf "$(CURDIR)/sheldon/plugins.toml" "$(CONFIG_HOME)/sheldon/plugins.toml"

vim:
	@mkdir -p "$(CONFIG_HOME)/vim"
	ln -vsf "$(CURDIR)/vim/vimrc" "$(CONFIG_HOME)/vim/vimrc"
