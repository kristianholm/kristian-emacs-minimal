;;; kristian-dired-settings.el --- dictates how directory mode (dired) behaves

; Dired copy and delete non-empty folders
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'top)

(provide 'kristian-dired-settings)