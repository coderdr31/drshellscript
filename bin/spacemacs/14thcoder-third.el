
(evil-ex-define-cmd "panma[th]" (lambda () (interactive) (shell-command (format "pandoc --latex-engine=xelatex --highlight-style=pygments --template=dr_pandoc_math-manual.tex -o ./pdf/%s.pdf %s" (file-name-sans-extension (file-name-nondirectory (buffer-file-name))) (file-name-nondirectory (buffer-file-name))))))
(provide '14thcoder-third)
