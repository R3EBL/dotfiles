
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Disable menu bar, tool bar, and scroll bar
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
;; Set custom theme
(custom-set-variables
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default)))

(setq make-backup-files nil) 
(setq auto-save-default nil)
;; Set font to Iosevka, size 120
(set-face-attribute 'default nil :family "Iosevka" :height 120)

;; Enable ido mode with smex for enhanced M-x experience
(require 'smex)
(require 'ido-completing-read+)
(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; Uncomment to enable whitespace handling function
;(defun rc/set-up-whitespace-handling ()
;  (interactive)
;  (whitespace-mode 1)
;  (add-to-list 'write-file-functions 'delete-trailing-whitespace))

;(add-hook 'prog-mode-hook 'rc/set-up-whitespace-handling)

(setq-default c-basic-offset 4
              c-default-style '((java-mode . "java")
                                (awk-mode . "awk")
                                (other . "bsd")))



