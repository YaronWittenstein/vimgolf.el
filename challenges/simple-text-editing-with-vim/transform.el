; http://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004

(defun transform ()
  (with-temp-file "output"
    (insert-file-contents "input")
    (while (not (eobp))
      (if (looking-at "# ")
	  (progn 
	    (forward-line 2)
	    (delete-region (line-beginning-position) (line-end-position))
	    (copy-region-as-kill (line-beginning-position 0) (line-end-position 0))
	    (yank)))
	(forward-line))))

(transform)
