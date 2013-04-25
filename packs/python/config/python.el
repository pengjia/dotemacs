(live-add-pack-lib "nlinum")
(live-add-pack-lib "centered-cursor-mode")
(live-add-pack-lib "autopair")

(require 'nlinum)
(require 'centered-cursor-mode)
(require 'autopair)

(add-hook 'python-mode-hook
          (lambda ()
            (flyspell-prog-mode)
            (auto-complete-mode)
            (nlinum-mode)
            (setq autopair-handle-action-fns
                  (list 'autopair-default-handle-action
                        'autopair-python-triple-quote-action))
            (centered-cursor-mode)))

(add-hook 'after-init-hook
          (lambda ()
            (autopair-global-mode)))

;; set ipython as default python shell
(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")
