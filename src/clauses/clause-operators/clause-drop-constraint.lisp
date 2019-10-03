(in-package :lang.cypher.clause)

(defun clause-drop-constraint (stream statement)
  (fire-error-not-supported-clause "DROP-CONSTRAINT"))
