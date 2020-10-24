;;; funcs.el --- cizel layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun cizel/my-find-file()
    ;; find file.
    (interactive)
    (let* ((cmd "find . -name \"*.*\"")
              (output (shell-command-to-string cmd))
              (line (split-string output "[\n\r]+")))
        (message "cmd=%s" cmd)
        (message "output=%s" output)
        (message "line=%s" line)
        ))


;;; funcs.el ends here
