; http://www.vimgolf.com/challenges/5cf8aa1281437e000c4df724

(defun transform ()
  (with-temp-file "output"
    (setq-local vegteables nil)
    (insert-file-contents "input")
    (while (not (eobp))
      (if (looking-at "# vegetable")
	  (progn
	    (setq-local region-start (point))
	    (while (not (looking-at "-"))
	      (forward-line))
	    (forward-line)
	    (setq-local region-end (point))
	    (cons
	      (buffer-substring region-start region-end)
	      vegteables)
	    (kill-region region-start region-end)
	    (forward-line))
	(forward-line)))

    (while vegteables
      (let ((vegteable (pop vegteables)))
	(goto-char (point-min))
	(insert vegteable)))))

(transform)
