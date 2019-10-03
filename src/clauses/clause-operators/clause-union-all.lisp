(in-package :lang.cypher.clause)

(defun clause-union-all (stream statement)
  (fire-error-not-supported-clause "UNION-ALL"))
