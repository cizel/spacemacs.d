;;; packages.el --- cizelayer-programming layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst cizelayer-programming-packages
    '(
         lsp-mode
         lsp-java
         lsp-ui
         )
  )

(defun cizelayer-programming/post-init-lsp-mode ()

    (progn
        (setq lsp-modeline-code-actions-enable nil)
        (setq lsp-enable-file-watchers nil)
        )
    )

(defun cizelayer-programming/post-init-lsp-java ()

    (progn
        (setq path-to-lombok
            (expand-file-name
                "~/.m2/repository/org/projectlombok/lombok/1.18.12/lombok-1.18.12.jar"
                )
            )
        (setq lsp-java-vmargs
            `(
                 "-Xmx4G"

                 "-XX:+UseStringDeduplication"
                 "-noverify"
                 ,(concat "-javaagent:" path-to-lombok)
                 )
            )
        )
    )

(defun cizelayer-programming/post-init-lsp-ui ()

    (progn
        (setq lsp-ui-sideline-show-code-actions nil)
        )
    )


;;; packages.el ends here
