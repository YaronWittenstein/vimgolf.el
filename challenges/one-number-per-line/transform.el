(defun transform ()
  (with-temp-file "output"
    (insert-file-contents "input")
    (kill-whole-line)
    (kill-whole-line)
    (let text (
    (replace-regexp-in-string "," "*" 
  ))


(transform)
