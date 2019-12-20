; http://www.vimgolf.com/challenges/5d7f565deac0df000cfc2154

(defun transform ()
  (with-temp-file "output"
    (insert-file-contents "input")
    (while (not (eobp))
      (if (looking-at "## ")
	  (progn
	    (delete-char 3)
	    (let ((line-length
		   (- (line-end-position) (line-beginning-position))))
	      (forward-line)
	      (newline)
	      (forward-line -1)
	      (insert-char ?- line-length)
	      (forward-line)))
	(forward-line)))))

(transform)
