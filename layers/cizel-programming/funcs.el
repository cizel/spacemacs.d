;;; funcs.el --- cizel-programming layer pckages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun cizel/compile-and-run-java()
    (interactive)
    (progn
        (let* (
                  (project-path (projectile-project-root))
                  (file-path buffer-file-name)
                  (file-name(file-name-base buffer-file-name))
                  (cd-project (concat "cd " project-path))
                  (compile-java (concat "javac" " " file-path " && " "mv src/*.class ./out" ))
                  (run-java (concat "cd ./out && java " file-name))
                  )
            (shell-command (concat cd-project " && " compile-java))
            (compile (concat cd-project " && " run-java))
            )
        ))

(defun cizel/kill-compile-buffer-if-successful (buffer string)
    "Bury a compilation buffer if succeeded without warnings "
    (when (and
              (buffer-live-p buffer)
              (string-match "compilation" (buffer-name buffer))
              (string-match "finished" string)
              (not
                  (with-current-buffer buffer
                      (goto-char (point-min))
                      (search-forward "warning" nil t))))
        (run-with-timer 5 nil 'delete-windows-on
            (get-buffer-create "*compilation*")
           )))

(defun cizel/mvn-compile()
    (interactive)
    (let* (
              (project-root (projectile-project-root))
              (mvn-command "mvn clean package -DskipTests"))
              (progn
                  (message "this is project root: %s" project-root)
                  ;;(shell-command (concat "cd" " " project-root "&&" " " mvn-command))
                  (compile (concat "cd" " " project-root " " "&&" " " mvn-command))
                  )
               ))

;;; funcs.el ends here
