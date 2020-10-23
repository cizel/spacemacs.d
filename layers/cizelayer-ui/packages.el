;; packages.el --- cizelayer-ui layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: 施臻 <shizhen@Cizel-MacBook>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst cizelayer-ui-packages
    '(
         (valign :location (recipe
                               :fetcher github
                               :repo "casouri/valign"))
         )
)

(defun cizelayer-ui/init-valign ()
    (use-package valign
        :ensure t
        :defer t
        :config
        (add-hook 'org-mode-hook #'valign-mode)
        (add-hook 'markdown-mode-hook #'valign-mode)
        )
    )

;;; packages.el ends here
