(in-package :lang.cypher.clause)

(defun clause-edge-p (statement)
  (let ((first-element (car statement)))
    (or (eq :--> first-element)
        (eq :--- first-element))))


(defun clause-node-p (statement)
  (not (clause-edge-p statement)))


(defun clause-node (stream statement)
  (fire-error-not-supported-clause "NODE"))


(defun clause-edge (stream statement)
  (fire-error-not-supported-clause "EDGE"))
