(in-package :lang.cypher.clause)

(defun clause-foreach (stream statement)
  (fire-error-not-supported-clause "FOREACH"))
