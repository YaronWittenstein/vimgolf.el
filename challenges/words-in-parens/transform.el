; http://www.vimgolf.com/challenges/5192f96ad8df110002000002

(defun transform ()
  (with-temp-file "output"
    (insert-file-contents "input")
    (while (not (eobp))
      (progn
	(setq-local word-start (point))
	(forward-word)
	(setq-local word-end (point))
	(backward-word)
	(kill-region word-start word-end)
	(insert-char ?()
	(yank)
	(insert-char ?))
	(goto-char (+ 3 word-end))))))

(transform)
