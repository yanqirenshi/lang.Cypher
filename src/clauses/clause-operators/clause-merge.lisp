(in-package :lang.cypher.clause)

(defun clause-merge (stream statement)
  (fire-error-not-supported-clause "MERGE"))

(defun clause-merge.on-create (stream statement)
  (fire-error-not-supported-clause "ON-CREATE"))

(defun clause-merge.on-match (stream statement)
  (fire-error-not-supported-clause "ON-MATCH"))
