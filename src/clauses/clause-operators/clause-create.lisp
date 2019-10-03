(in-package :lang.cypher.clause)

(defun clause-create (stream statement)
  (fire-error-not-supported-clause "CALL"))
