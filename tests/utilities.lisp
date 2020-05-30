(defpackage lang.cypher-test.utilities
  (:use :cl
        :lang.cypher
        :prove)
  (:import-from :alexandria
                #:when-let)
  (:export #:mkstmt
           #:is-cypher))
(in-package :lang.cypher-test.utilities)


(defun mkstmt-core (items)
  (let ((item (car items)))
    (if (null item)
        ""
        (let ((item-trimed (string-trim '(#\Space #\Tab #\Newline) item)))
          (concatenate 'string
                       (if (string= "" item-trimed) "" " ")
                       item-trimed
                       (mkstmt-core (cdr items)))))))


(defun mkstmt (&rest items)
  (if (null items)
      ""
      (concatenate 'string
                   (string-trim '(#\Space #\Tab #\Newline) (car items))
                   (mkstmt-core (cdr items)))))


(defun is-cypher (&key stmts encoded)
  (declare (ignore encoded))
  (let ((stmt (apply #'mkstmt stmts)))
    (let ((encode-result (encode stmt)))
      (is stmt (decode encode-result)))))
