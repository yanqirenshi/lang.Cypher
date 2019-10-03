(in-package :lang.cypher.clause)

(defun clause-return (stream statement)
  (declare (ignore statement))
  (write-string "RETURN " stream))
