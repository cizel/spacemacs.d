;;; packages.el --- cizel-misc layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2020 Sylvain Benner & Contributors
;;
;; Author: cizel <cizelme@gmail.com>
;; URL: https://github.com/cizel/spacemacs.d
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst cizel-misc-packages
    '(
         easy-hugo
         ox-hugo
         ))

(defun cizel-misc/init-easy-hugo ()
    (use-package easy-hugo
        :defer t
        :init
        (spacemacs/set-leader-keys-for-major-mode 'easy-hugo-mode
            "n" 'easy-hugo-newpost
            "D" 'easy-hugo-article
            "p" 'easy-hugo-preview
            "P" 'easy-hugo-publish
            "o" 'easy-hugo-open
            "d" 'easy-hugo-delete
            "e" 'easy-hugo-open
            "c" 'easy-hugo-open-config
            "f" 'easy-hugo-open
            "N" 'easy-hugo-no-help
            "v" 'easy-hugo-view
            "r" 'easy-hugo-refresh
            "g" 'easy-hugo-refresh
            "s" 'easy-hugo-sort-time
            "S" 'easy-hugo-sort-char
            "G" 'easy-hugo-github-deploy
            "A" 'easy-hugo-amazon-s3-deploy
            "C" 'easy-hugo-google-cloud-storage-deploy
            "q" 'evil-delete-buffer
            (kbd "TAB") 'easy-hugo-open
            (kbd "RET") 'easy-hugo-preview)

        :config
        (progn
            (setq easy-hugo-basedir "~/work/.private/code/cizel-blog")
            (evil-make-overriding-map easy-hugo-mode-map 'normal))))

(defun cizel-misc/post-init-ox-hugo()
    (use-package ox-hugo
        :ensure t
        :after ox))

;;; packages.el ends here
