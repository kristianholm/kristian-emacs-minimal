;;; kristian.el --- init file for the user kristian
;;

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

;;;; Load my user (kristian) specific elisp-files
;; load my keybindings
;;(require 'kristian-bindings)
;; load dired-settings
;;(require 'kristian-dired-settings)


;;;; Keybindings
;;; kristian-bindings.el --- let's me tame the mighty beast with keystrokes

;; instead of using the alt-key, which is not as easy to reach 
;; from the home row, use ctrl+x and ctrl+m
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; If you misspell a word, insted of tapping backspace, simply
;; use ctrl+w to delete the whole word and write it again. In my case 
;; this way is faster then using backspace to delete one character 
;; after another.
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\C-x\C-k" 'kill-region)

;; Dired settings
; Dired copy and delete non-empty folders
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'top)
