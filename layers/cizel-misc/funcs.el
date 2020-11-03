;;; funcs.el --- cizel-misc layer pckages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun cizel/write-md-translate()
    "insert a table translate"
    (interactive)
    (let ((result))
        (progn
            (with-temp-buffer
                (clipboard-yank)
                (setq word (buffer-string)))
            (youdao-dictionary-search word)
            (switch-to-buffer-other-window "*Youdao Dictionary*")
            (setq result (buffer-string))
            (other-window 1)
            (string-match "- .*" result)
            (setq result (match-string 0 result))
            (next-line)
            (insert (format "| `%s` | %s |" word result))
            )))



(defun cizel/md-insert-image ()
    "insert a image from clipboard"
    (interactive)
    (let* (
              (relative-path "images/")
              (path (concat default-directory relative-path))
              (relative-image-file (concat
                                       (buffer-name)
                                       (format-time-string "_%Y%m%d_%H%M%S.png"))
                  )
              (image-file (concat
                              path
                              relative-image-file
                              )))
        (if (not (file-exists-p path))
            (mkdir path))
        (do-applescript (concat
                            "set the_path to \"" image-file "\" \n"
                            "set png_data to the clipboard as «class PNGf» \n"
                            "set the_file to open for access (POSIX file the_path as string) with write permission \n"
                            "write png_data to the_file \n"
                            "close access the_file"))
        (insert (format "![](./%s%s)" relative-path relative-image-file))
        (message image-file)))

;;; funcs.el ends here
