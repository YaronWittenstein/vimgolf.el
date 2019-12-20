; http://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473

(defun transform ()
  (with-temp-file "output"
    (insert-file-contents "input")
    (kill-whole-line)
    (kill-whole-line)

    (while (not (eobp))
      (if (char-equal (following-char) ?,)
	(progn
	  (delete-char 1)
	  (if (not (char-equal (following-char) ?\n))
	      (insert-char ?\n))))
	(forward-char))))

(transform)
