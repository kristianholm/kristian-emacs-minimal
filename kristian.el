;;; kristian.el --- init file for the user kristian
;;
;; This file will be loaded by emacs-minimal.el, because
;; on the system I am writing this on "kristian" is the
;; user that is logged in.
;;
;; On your computer, make a file with the same name as your 
;; username and the ending .el, like this "<username>.el"

;; I don't like that the cursor is blinking
(blink-cursor-mode 0)

;; I also don't like or need the scroll-bar, tool-bar or menu-bar
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; When you do something that Emacs needs you to confirm, like 
;; closing an unsaved file, Emacs wants you to spell the whole
;; word "yes" or "no", depending on what action you want.
;; For a simple person like me, an "y" or a "n" is all I need.
(fset 'yes-or-no-p 'y-or-n-p)

;; load my keybindings
(require 'kristian-bindings)