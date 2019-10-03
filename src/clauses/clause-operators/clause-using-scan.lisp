(in-package :lang.cypher.clause)

(defun clause-using-scan (stream statement)
  (fire-error-not-supported-clause "USING-SCAN"))
