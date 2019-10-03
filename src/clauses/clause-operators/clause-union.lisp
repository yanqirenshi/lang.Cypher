(in-package :lang.cypher.clause)

(defun clause-union (stream statement)
  (fire-error-not-supported-clause "UNION"))
