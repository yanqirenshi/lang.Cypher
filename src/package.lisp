(defpackage lang.cypher
  (:use #:cl #:lang.cypher.clause)
  (:import-from :alexandria
                #:when-let)
  (:export #:decode
           #:encode))
(in-package :lang.cypher)
