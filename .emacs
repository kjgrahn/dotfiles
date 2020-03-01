;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; .emacs
;; $Id: .emacs,v 1.24 2013/09/05 21:56:21 grahn Exp $
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; fixes, configuration, cc-mode
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Get rid of that stinking menu and related abominations
(blink-cursor-mode nil)

;; Fix upcase-region and downcase-region
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(fset 'retab-line
   [1 tab down])

(fset 'untabify-buffer
   [?\C-c ?h 67108896 ?\C-c ?e -134217608 ?u ?n ?t ?a ?b ?i ?f ?y return])

(fset 'list-buffers-same-window
  [24 2 24 111 down down])

(fset 'set-mark1
   [?\C-x ?r ?m ?m ?a ?r ?k ?1 return])

(fset 'jump-mark1
   [-134217608 ?b ?o ?o ?k ?m ?a ?r ?k ?- ?j tab return ?m ?a ?r ?k ?1 return])

(defun match-bracket (arg)
  "Go to the matching bracket if on bracket, otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        ((looking-at "\\s\{") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\}") (forward-char 1) (backward-list 1))
        ((looking-at "\\s\[") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\]") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))
  )
)

;;(require 'cc-mode)
(c-add-style "bsd4" '("bsd" (c-basic-offset . 4)))
(c-add-style "bsd2" '("bsd" (c-basic-offset . 2)))
(setq c-default-style "bsd4")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; key bindings
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key "%"     'match-bracket)
(global-set-key [S-tab] 'untabify-buffer)
(global-set-key [C-tab] 'dabbrev-expand)

(global-set-key   [f2] 'find-tag)
(global-set-key [S-f2] 'find-tag-other-window)
(global-set-key   [f3] 'indent-for-comment)
(global-set-key [S-f3] 'set-comment-column)
(global-set-key   [f4] 'comment-region)
(global-set-key [C-f4] 'indent-region)
(global-set-key   [f5] 'tags-loop-continue)
(global-set-key [S-f5] 'tags-search)
(global-set-key   [f6] 'other-window)
(global-set-key [S-f6] 'goto-line)
(global-set-key [C-f6] 'next-error)
(global-set-key   [f7] 'jump-mark1)
(global-set-key [S-f7] 'set-mark1)
(global-set-key   [f8] 'call-last-kbd-macro)

(global-set-key [delete] 'delete-backward-char)

(global-set-key  [S-down] 'scroll-up)
(global-set-key    [S-up] 'scroll-down)
(global-set-key [S-right] 'end-of-line)
(global-set-key  [S-left] 'beginning-of-line)

(global-set-key    [menu] 'yank)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; settings you don't want to change
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq case-fold-search 't)
(set-default 'case-fold-search 't)

(setq inhibit-startup-message t)
(setq meta-flag t)
(setq make-backup-files nil)
(setq vc-make-backup-files nil)
(setq vc-cvs-stay-local nil)

(put 'narrow-to-page 'disabled nil)
(put 'eval-expression 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(mouse-wheel-mode 't)
(line-number-mode 't)
(transient-mark-mode 't)
;;(standard-display-european t) 
;;(standard-display-8bit 128 254)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; user settings
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq auto-save-interval 500)
(setq require-final-newline 1)
(setq truncate-partial-width-windows t)
(setq truncate-lines t)
(setq next-screen-context-lines 1)
(setq scroll-step 1)
(setq next-line-add-newlines nil)
(setq mouse-yank-at-point 't)
(setq default-major-mode 'text-mode)
(auto-compression-mode 1)
(global-font-lock-mode 1)
(setq sentence-end-double-space nil)

(setq sgml-basic-offset 0)

(column-number-mode 't)

(set 'diff-switches "-Tu")

