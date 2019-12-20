; http://www.vimgolf.com/challenges/5462e3f41198b80002512673

(defun transform ()
  (with-temp-file "output"
    (insert-file-contents "input")
    (let ((column
	   (+
	     (string-match "=" (buffer-string))
	     2)))
	(while (not (eobp))
	  (progn
	    (move-to-column column)
	    (insert-char ?\")
	    (end-of-line)
	    (insert-char ?\")
	    (forward-line))))))

(transform)
