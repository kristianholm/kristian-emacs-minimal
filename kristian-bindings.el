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

;; Makes ctrl+tab cycle through the buffers (the different files) you
;; have open. Very handy if you're not quite sure what your looking for.
(global-set-key (kbd "<C-tab>") 'bury-buffer)

(provide 'kristian-bindings)
