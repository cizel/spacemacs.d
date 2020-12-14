;;; keybindings.el --- cizel layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(global-set-key (kbd "C-c a") 'org-agenda)
(define-key global-map (kbd "C-c t") 'org-capture)

(global-set-key (kbd "s-c") 'kill-ring-save)

(global-set-key (kbd "s-v") 'yank)

;;; keybindings.el ends here
