# Manage dotfile symlinks with explicit per-config targets.
CONFIG_HOME ?= $(HOME)/.config

.PHONY: all install bat git tmux mise zsh ghostty sheldon

all: install

install: bat git tmux mise zsh ghostty sheldon

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

sheldon:
	@mkdir -p "$(CONFIG_HOME)/sheldon"
	ln -vsf "$(CURDIR)/sheldon/plugins.toml" "$(CONFIG_HOME)/sheldon/plugins.toml"
