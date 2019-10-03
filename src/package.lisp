(defpackage lang.cypher
  (:use #:cl #:lang.cypher.clause)
  (:import-from :alexandria
                #:when-let))
(in-package :lang.cypher)
