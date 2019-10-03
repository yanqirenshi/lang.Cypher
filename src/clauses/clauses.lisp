(in-package :lang.cypher.clause)

(defvar *clause-alists*
  '((:common            . clause-common)
    (:match             . clause-match)
    (:optional-match    . clause-optional-match)
    (:start             . clause-start)
    (:return            . clause-return)
    (:with              . clause-with)
    (:unwind            . clause-unwind)
    (:where             . clause-where)
    (:order-by          . clause-order-by)
    (:skip              . clause-skip)
    (:limit             . clause-limit)
    (:using-index       . clause-using-index)
    (:using-index-seek  . clause-using-index-seek)
    (:using-scan        . clause-using-scan)
    (:using-join        . clause-using-join)
    (:create            . clause-create)
    (:delete            . clause-delete)
    (:detach-delete     . clause-detach-delete)
    (:set               . clause-set)
    (:remove            . clause-remove)
    (:foreach           . clause-foreach)
    (:merge             . clause-merge)
    (:call              . clause-call)
    (:union             . clause-union)
    (:union-all         . clause-union-all)
    (:load-csv          . clause-load-csv)
    (:create-constraint . clause-create-constraint)
    (:drop-constraint   . clause-drop-constraint)
    (:create-index      . clause-create-index)
    (:drop-index        . clause-drop-index)))


(defvar *clauses*
  (alexandria:alist-hash-table *clause-alists* :test 'equal))


(defun clause-p (claus)
  (and (symbolp claus)
       (not (keywordp claus))))


(defun get-clause-key (statement)
  (let ((key (car statement)))
    (cond ((keywordp key) key)
          ((stringp key)
           (alexandria:make-keyword (string-upcase key)))
          (t (error "????")))))


(defun get-clause-operator (statement)
  (let ((clause (get-clause-key statement)))
    (unless (clause-p clause)
      (error "First node is not Clause. statement=~S~%" statement))
    (gethash (symbol-name clause) *clauses*)))
