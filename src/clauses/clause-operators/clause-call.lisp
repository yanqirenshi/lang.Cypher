(in-package :lang.cypher.clause)

(defun clause-call (stream statement)
  (fire-error-not-supported-clause "CALL"))
