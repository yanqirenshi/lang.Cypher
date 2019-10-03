(in-package :lang.cypher.clause)

(defun clause-load-csv.using-periodic-commit (stream statement)
  (fire-error-not-supported-clause "USING-PERIODIC-COMMIT"))


(defun clause-load-csv (stream statement)
  (fire-error-not-supported-clause "LOAD-CSV"))
