;;; config.el --- cizel-programming layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; js-mode configuration
(add-to-list 'auto-mode-alist '("views.*\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-mode))

(setq-default
    evil-shift-width 4
    ;; js2-mode
    js2-basic-offset 4
    ;; web-mode
    css-indent-offset 4
    js-indent-level 4
    js-indent-align-list-continuation nil
    c-basic-offset 4
    web-mode-markup-indent-offset 4
    web-mode-css-indent-offset 4
    web-mode-code-indent-offset 4
    web-mode-attr-indent-offset 4)

;;; config.el ends here
