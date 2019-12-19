(defun transform ()
  (with-temp-file "output"
    (insert-file-contents "input")
    (while (not (eobp))
      (if (looking-at "# ")
	  (progn 
	    (forward-line)
	    (kill-whole-line) 
	    (yank)
	    (yank)
	    (forward-line))
	(forward-line)))))

(transform)
