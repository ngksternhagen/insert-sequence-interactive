(defun insert-sequence-interactive (n1 n2)
  "insert a sequence of integers with newline chars after each"
  (interactive "nenter starting integer:\nnenter length of sequence:")
  ;; "beginning" and "ending" I expect intuitively are different from what the code below
  ;; produces -- change n1 as a temporary workaround.
  (let ((start (- n1 1))
        (end   (n2)))
    (dotimes (i end)
      (insert (format "%2d\n" (1+ (+ i start)))))))
