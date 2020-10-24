;;; config.el --- cizel-ui layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; Setting emacs border
(set-frame-parameter nil 'internal-border-width 20)

;; Setting font line height
(defun set-bigger-spacing ()
    (setq-local default-text-properties '(line-spacing 0.1 line-height 1.5 )))

(add-hook 'text-mode-hook 'set-bigger-spacing)
(add-hook 'prog-mode-hook 'set-bigger-spacing)

;; Setting  default font
(set-fontset-font "fontset-default" 'han '("PingFang SC"))

;;; config.el ends here
