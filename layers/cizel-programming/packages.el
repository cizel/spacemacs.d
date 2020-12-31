;;; packages.el --- cizel-programming layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;)
;;; License: GPLv3

(defconst cizel-programming-packages
    '(
         lsp-mode
         lsp-java
         mvn
         ))

(defun cizel-programming/post-init-mvn()
    (use-package mvn
        :defer t
        :init
        (spacemacs/set-leader-keys-for-major-mode 'java-mode
            "mcc" 'cizel/mvn-compile
            )
        (spacemacs/set-leader-keys-for-major-mode 'web-mode
            "mcc" 'cizel/mvn-compile
            )
        (spacemacs/set-leader-keys-for-major-mode 'xml-mode
            "mcc" 'cizel/mvn-compile
            )
        (spacemacs/set-leader-keys-for-major-mode 'yaml-mode
            "mcc" 'cizel/mvn-compile
            )
        (add-hook 'compilation-finish-functions 'cizel/kill-compile-buffer-if-successful)
            ))

(defun cizel-programming/post-init-lsp-java ()
    (progn

        (setq path-to-lombok
            (expand-file-name
                "~/.m2/repository/org/projectlombok/lombok/1.18.12/lombok-1.18.12.jar"))
        (setq lsp-java-vmargs
            `(
                 "-Xmx4G"
                 "-XX:+UseStringDeduplication"
                 "-noverify"
                 ,(concat "-javaagent:" path-to-lombok)))))

(defun cizel-programming/post-init-lsp-mode ()
    (progn

        (setq lsp-ui-doc-enable nil)
        (setq lsp-enable-file-watchers nil)
        (setq lsp-modeline-code-actions-enable nil)
        (setq lsp-ui-sideline-show-code-actions nil)
        (setq lsp-modeline-diagnostics-enable nil)
        (setq lsp-auto-configure t)
        (setq lsp-prefer-flymake nil)))

;;; packages.el ends here
