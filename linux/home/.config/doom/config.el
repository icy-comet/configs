;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Aniket Teredesai"
      user-mail-address "aniket.teredesai@gmail.com")

(setq doom-theme 'catppuccin)
(setq preferred-font (font-spec :family "MonoLisa Nerd Font" :size 15))
(setq doom-font preferred-font)

(setq display-line-numbers-type t)
(setq indent-tabs-mode nil)
(setq tab-width 4)
(setq require-final-newline nil)
(setq mode-require-final-newline nil)
(set-frame-parameter nil 'alpha-background 70)
(add-to-list 'default-frame-alist '(alpha-background . 70))

(setq org-directory "~/org/")

(after! treemacs
  (treemacs-project-follow-mode t)
  (treemacs-indent-guide-mode t)
  (treemacs-follow-mode t))