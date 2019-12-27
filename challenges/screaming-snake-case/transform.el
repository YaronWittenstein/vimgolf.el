; http://www.vimgolf.com/challenges/5d7fad5deac0df0006fc224a

(defun transform ()
  (with-temp-file "output"
    (insert-file-contents "input")

    (while (not (eobp))
      (progn 
	(setq-local word-start (point))
	(forward-word)
	(setq-local word-end (point))
	(setq-local word (buffer-substring word-start word-end))
	(kill-region word-start word-end)
	(insert
	 (capitalize
	  (downcase
	   (replace-regexp-in-string "_" " " word))))))))

(transform)
