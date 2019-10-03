(in-package :lang.cypher.clause)

(defun clause-start (stream statement)
  (fire-error-not-supported-clause "START"))
