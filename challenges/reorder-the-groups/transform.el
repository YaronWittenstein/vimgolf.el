; http://www.vimgolf.com/challenges/5cf8aa1281437e000c4df724

(defun transform ()
  (with-temp-file "output"
    (setq-local vegtables nil)
    (insert-file-contents "input")
    (while (not (eobp))
      (if (looking-at "# vegetable")
	  (progn
	    (setq-local region-start (point))
	    (while (not (looking-at "-"))
	      (forward-line))
	    (forward-line)
	    (setq-local region-end (point))
	    (setq-local vegtables
		(cons
		  (buffer-substring region-start region-end)
		  vegtables))
	    (kill-region region-start region-end)
	    (forward-line))
	(forward-line)))

    (setq-local vegtables (reverse vegtables))

    (while vegtables
      (let ((veg (pop vegtables)))
	(goto-char (point-max))
	(insert veg)))))

(transform)
