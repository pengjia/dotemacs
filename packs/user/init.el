(setq user-full-name "Peter Peng")
(setq user-mail-address "peter.pengjia@gmail.com")

;;; change this according to your needs
(defvar default-font "Inconsolata-16" "My default Emacs font.")

(set-frame-font default-font nil t)

(setq default-directory "~/Code")

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Treat clipboard input as UTF-8 string first; compound next, etc.
(setq x-select-request-type '(UTF8_STRING COMPUND_TEXT TEXT STRING))

(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
