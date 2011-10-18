;; Global key re-mappings.


;; Make copy-region-as-kill more accessible.
(global-set-key "\C-c\w" `copy-region-as-kill)
(global-set-key "\C-c\C-w" `copy-region-as-kill)

;; Set goto-line to something easier, as well.
(global-set-key "\C-c\C-g" `goto-line)

;; Set other-previous-window to something with sanity (as opposed to
;; apple keys)
(global-set-key "\C-c\o" `other-previous-window)


;; Always handle comments how I like
(global-set-key "\C-c\;" 'comment-or-uncomment-region)

;;;; F-key remappings
;; F1
(global-set-key [f1] 'notmuch)

;; F2 should always mean something to do with the shell.
(global-set-key [(shift f2)] 'ansi-term)

;; F3
;; Meta-F3: goto *scratch*
(defun switch-to-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))
(global-set-key [(meta f3)] 'switch-to-scratch)

;; F4

;; F5
(global-set-key [f5] 'compile)
(global-set-key [(shift f5)] 'flymake-start-syntax-check)

;; F6
(global-set-key [f6] 'kmacro-start-macro)
(global-set-key [(shift f6)] 'kmacro-end-or-call-macro)

;; F7
;; F8
(global-set-key [f8] 'flymake-goto-next-error)

;; F9
(global-set-key [f9] 'vc-next-action)

;; F10
(global-set-key [f10] 'sr-speedbar-toggle)

;; F11
(global-set-key [f11] 'switch-to-buffer-other-window)

;;;; Aliases!
(defalias 'qrr 'query-replace-regexp)
(defalias 'fm 'flymake-mode)
