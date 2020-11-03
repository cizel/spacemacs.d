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
         sis
         youdao-dictionary
         ))

(defun cizel-misc/post-init-youdao-dictionary()
    (use-package youdao-dictionary
        :ensure t
        :bind
        (("C-c w" . youdao-dictionary-search-at-point-posframe))
        ))

(defun cizel-misc/init-sis()
    (use-package sis
        :ensure t
        :config
        (sis-ism-lazyman-config
            "com.apple.keylayout.US"
            "im.rime.inputmethod.Squirrel.Rime")
        ;; enable the /cursor color/ mode
        (sis-global-cursor-color-mode t)
        ;; enable the /respect/ mode
        (sis-global-respect-mode t)
        ;; enable the /follow context/ mode for all buffers
        (sis-global-follow-context-mode t)
        ;; enable the /inline english/ mode for all buffers
        (sis-global-inline-mode t)))

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



;;; packages.el ends here
