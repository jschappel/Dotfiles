(use-package! org
  :custom
  (org-log-done 'time)
  (org-agenda-start-with-log-mode t)
  (org-agenda-files '("~/OrgDocs/tasks.org" "~/OrgDocs/birthdays.org"))
  (org-todo-keywords
   '((sequence "TODO(t)" "NEXT(n)" "ACTIVE(a)" "|" "DONE(d!)")))
  (org-refile-targets
   '(("~/OrgDocs/archive.org" :maxlevel . 1)))
  (advice-add 'org-refile :after 'org-save-all-org-buffers)
  (org-todo-keyword-faces
   '(("NEXT" . "salmon")))
  (org-agenda-custom-commands
   '(("d" "Dashboard"
      ((agenda "" ((org-deadline-warning-days 7)))
       (todo "NEXT" ((org-agenda-overriding-header "Next Tasks")))
       (tags-todo "+fsm" ((org-agenda-overriding-header "FSM Tasks")))
       (tags-todo "agenda/ACTIVE" ((org-agenda-overriding-header "Active Projects")))))
     ("n" "Next Tasks" ((todo "NEXT" ((org-agenda-overriding-header "Next Tasks")))))
     ("w" "Work Tasks" tags-todo "+work-fsm")
     ("f" "FSM Tasks" ((tags-todo "+fsm-work" ((org-agenda-overriding-header "FSM Tasks")))))))
  (org-capture-templates
   `(("t" "Tasks / Projects")
     ("tf" "FSM Task" entry (file+olp "~/OrgDocs/tasks.org" "Inbox")
      "* TODO %?  \t:fsm:\n  %U\n  %a\n  %i" :empty-lines 1)
     ("tt" "Task" entry (file+olp "~/OrgDocs/tasks.org" "Inbox")
      "* TODO %?\n  %U\n  %a\n  %i" :empty-lines 1))))

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-list . t)
     (ocaml . t)
     (python . t)
     (racket . t)))

(use-package! org-tempo
  :config
  (add-to-list 'org-structure-template-alist '("oc" . "src ocaml"))
  (add-to-list 'org-structure-template-alist '("hs" . "src haskell"))
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
  (add-to-list 'org-structure-template-alist '("py" . "src python"))
  (add-to-list 'org-structure-template-alist '("rkt" . "src racket")))

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode))

(use-package treemacs-icons-dired
  :after treemacs dired
  :ensure t
  :config (treemacs-icons-dired-mode))

(setq doom-themes-treemacs-theme "doom-colors")

;(with-eval-after-load 'company
;  (define-key company-active-map (kbd "<tab>") nil)
;  (define-key company-active-map (kbd "<return>") nil)
;  (define-key company-active-map (kbd "RET") nil)
;  (define-key company-active-map (kbd "TAB") #'company-complete-selection))

(use-package evil-nerd-commenter
  :bind ("M-/" . evilnc-comment-or-uncomment-lines))
