(in-package :lang.cypher.clause)

(defun clause-order-by (stream statement)
  (fire-error-not-supported-clause "ORDER-BY"))
