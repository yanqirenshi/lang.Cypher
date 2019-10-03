(in-package :lang.cypher.clause)

(defun clause-limit (stream statement)
  (fire-error-not-supported-clause "LIMIT"))
