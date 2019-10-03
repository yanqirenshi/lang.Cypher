(in-package :lang.cypher)


(defun cypher-statement2string (statement &key stream)
  (assert statement)
  (let ((clause-operator  (get-clause-operator statement))
        (clause-parameter (cdr statement)))
    (assert clause-operator)
    (funcall clause-operator stream clause-parameter)))


(defun cypher-core (statements &key stream)
  (when-let ((statement (car statements)))
    (concatenate 'string
                 (cypher-statement2string statement :stream stream)
                 (cypher-core (cdr statements) :stream stream))))


(defun make-cypher-output-stream ()
  (make-array '(0)
              :element-type 'base-char
              :fill-pointer 0
              :adjustable   t))


(defmacro cypher (&body statements)
  `(let ((statement-string (make-cypher-output-stream)))
     (with-output-to-string (stream statement-string)
       (cypher-core '(,@statements) :stream stream))
     statement-string))
