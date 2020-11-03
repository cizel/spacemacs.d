;;; packages.el --- cizel-org layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst cizel-org-packages
    '(
         cal-china-x
         )
  )

(defun cizel-org/init-cal-china-x ()
    (use-package cal-china-x
        :config
        (progn
            (setq mark-holidays-in-calendar t)
            (setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
            (setq cal-china-x-general-holidays '((holiday-lunar 1 15 "元宵节")))
            (setq calendar-holidays
                (append cal-china-x-important-holidays
                    cal-china-x-general-holidays
                    ))
            )))
;;; packages.el ends here

