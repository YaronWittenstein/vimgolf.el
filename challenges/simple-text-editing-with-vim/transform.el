(defun transform ()
  (with-temp-file "output"
    (insert-file-contents "input")
    (while (not (eobp))
      (if (looking-at "# ")
	  (progn 
	    (forward-line 2)
	    (delete-region (line-beginning-position) (line-end-position))
	    (forward-line)
	    (copy-region-as-kill (line-beginning-position -1) (line-end-position -1))
	    (yank)
	    ))
	(forward-line))))

(transform)
