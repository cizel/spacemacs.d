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

(defconst cizel-ui-packages
    '(
         doom-modeline
         (valign :location (recipe
                               :fetcher github
                               :repo "casouri/valign"))
         )
    )

(defun cizel-ui/post-init-doom-modeline ()
    (progn
        (setq doom-modeline-buffer-file-name-style 'buffer-name)
        (setq doom-modeline-icon (display-graphic-p))
        (setq doom-modeline-major-mode-icon t)
        (setq doom-modeline-minor-modes t)
        )
    )

(defun cizel-ui/init-valign ()
    (use-package valign
        :ensure t
        :config
        (progn
            (add-hook 'org-mode-hook #'valign-mode)
            (add-hook 'markdown-mode-hook #'valign-mode)
            )
        )
    )



;;; packages.el ends here

