(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))



(org-babel-load-file (expand-file-name "~/.emacs.d/zackteo.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(jdee-server-dir "/home/zackteo/.emacs.d/jdee-server/target/")
 '(org-agenda-files (quote ("~/Dropbox/org Documents/birthday_new.org")))
 '(package-selected-packages
   (quote
    (company-mode company-auctex auctex rustic rust-mode cider elpy plantuml-mode plantUML-mode org-noter exwm ox-latex org-pdfview htmlize ox-reveal zenburn-theme zeal-at-point which-key use-package try projectile org-bullets magit lsp-ui lsp-java jdee java-snippets eclim dap-mode counsel company-lsp color-theme-modern color-theme auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
