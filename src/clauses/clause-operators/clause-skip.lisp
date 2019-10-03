(in-package :lang.cypher.clause)

(defun clause-skip (stream statement)
  (fire-error-not-supported-clause "SKIP"))
