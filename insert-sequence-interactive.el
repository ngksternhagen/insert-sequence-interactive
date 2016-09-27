;;; insert-sequence-interactive.el --- interactively insert sequence of numbers

;; Copyright (C) 2016 NGK Sternhagen

;; Author: NGK Sternhagen <sternhagen@protonmail.ch>
;; Version: 0.0.0
;; Keywords: sequence
;; URL: https://gitlab.com/skwuent/insert-sequence-interactive

;;; Commentary:

;; prompt the user to give "start" and "end" numbers, then insert a sequence
;; between these two numbers.

;;;###autoload
(defun insert-sequence-interactive (n1 n2)
  "insert a sequence of integers with newline chars after each"
  (interactive "nenter starting integer:\nnenter length of sequence:")
  ;; "beginning" and "ending" I expect intuitively are different from what the code below
  ;; produces -- change n1 as a temporary workaround.
  (let ((start (- n1 1))
        (end   (n2)))
    (dotimes (i end)
      (insert (format "%2d\n" (1+ (+ i start)))))))
