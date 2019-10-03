(in-package :lang.cypher.clause)

(defun clause-unwind (stream statement)
  (fire-error-not-supported-clause "UNWIND"))
