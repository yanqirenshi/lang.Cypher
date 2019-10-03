(in-package :lang.cypher.clause)

(defun clause-using-index (stream statement)
  (fire-error-not-supported-clause "USING-INDEX"))
