;;; backup.el --- backing up is important
;;
;; Loosing a file that have take time to write is not pleasant experience. 
;; backup.el collects autosaves and backupfiles to a spesific folder,
;; in this case a folder within kristian-emacs-minimal, but I recommend
;; making it backup to a folder within your home directory, like ~/backup
;; or in my case ~/.emacsbackup and ~/.emacsautosave

;; defines the variable that holds the path to the backup dir
;; by default within the git project folder
(defvar backup-dir 
  (expand-file-name (concat dotfiles-dir "emacsbackup")))
;; fill in your own backup dir if you want
;(defvar backup-dir (expand-file-name "~/backup"))


(defvar autosave-dir 
  (expand-file-name (concat dotfiles-dir "emacsautosave")))

(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*", autosave-dir t)))

(provide 'backup)