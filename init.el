;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; A test variable
;; (setq dotspacemacs-directory "~/spacemacs.org/")
(defun tangle-config ()
  "Tangles configuration files from .org file"
  (let ((src (concat dotspacemacs-directory "spacemacs.org"))
	(lyrs (concat dotspacemacs-directory "layers.el"))
	(ui (concat dotspacemacs-directory "user-init.el"))
	(uc (concat dotspacemacs-directory "user-config.el"))
  (usi (concat dotspacemacs-directory "user-spacemacs-init.el")))
    (when (file-readable-p src)
      (when (or (file-newer-than-file-p src lyrs)
                (file-newer-than-file-p src usi)
                (file-newer-than-file-p src ui)
                (file-newer-than-file-p src uc))
        (require 'ob-tangle)
        (org-babel-tangle-file src)))))

;; Call config tangling function
(tangle-config)

(defun dotspacemacs/init ()
   "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
   ;; Source spacemacs-init and user-spacemacs-init files
   (let ((si (concat dotspacemacs-directory "spacemacs-init.el"))
         (usi (concat dotspacemacs-directory "user-spacemacs-init.el")))
     (load-file si)
     (load-file usi)))


(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

  ;; Source user-init file
  (let ((ui (concat dotspacemacs-directory "user-init.el")))
    (load-file ui)))

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (let ((lyrs (concat dotspacemacs-directory "layers.el")))
    (load-file lyrs)))

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (let ((uc (concat dotspacemacs-directory "user-config.el")))
    (load-file uc)))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
