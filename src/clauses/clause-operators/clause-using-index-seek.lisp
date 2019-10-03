(in-package :lang.cypher.clause)

(defun clause-using-index-seek (stream statement)
  (fire-error-not-supported-clause "USING-INDEX-SEEK"))
