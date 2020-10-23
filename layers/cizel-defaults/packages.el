;;; config.el --- cizel-defaults layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst cizel-defaults-packages
    '(
         (valign :location (recipe
                               :fetcher github
                               :repo "casouri/valign"))
         )
    )

(defun cizel-defaults/init-valign ()
    (use-package valign
        :ensure t
        :hook (org-mode . valign-mode)
        ;;(add-hook 'org-mode-hook #'valign-mode)
        ;;(add-hook 'markdown-mode-hook #'valign-mode)
        )
    )



;;; packages.el ends here

