(in-package :lang.cypher.clause)

(defun clause-detach-delete (stream statement)
  (fire-error-not-supported-clause "DETACH-DELETE"))
