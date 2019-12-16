;; http://www.vimgolf.com/challenges/5cf62aa56c09760009d6b2f3

(defun transform ()
    (with-temp-buffer
	(insert-file-contents "input")
	(goto-char (point-min))
	(while (not (eobp))
	(if (not (= (line-beginning-position) (line-end-position)))
	    (progn
	    (end-of-line)
	    (insert ?;)))
	(forward-line))
	(write-file "output")))

(transform)
