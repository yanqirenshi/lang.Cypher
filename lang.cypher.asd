#|
  This file is a part of lang.cypher project.
|#

(defsystem "lang.cypher"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "syntax")
                 (:module "clauses"
                  :components ((:file "package")
                               (:file "util")
                               (:module "clause-operators"
                                :components ((:file "clause-common")
                                             (:file "clause-match")
                                             (:file "clause-optional-match")
                                             (:file "clause-start")
                                             (:file "clause-return")
                                             (:file "clause-with")
                                             (:file "clause-unwind")
                                             (:file "clause-where")
                                             (:file "clause-order-by")
                                             (:file "clause-skip")
                                             (:file "clause-limit")
                                             (:file "clause-using-index")
                                             (:file "clause-using-index-seek")
                                             (:file "clause-using-scan")
                                             (:file "clause-using-join")
                                             (:file "clause-create") ;;
                                             (:file "clause-delete") ;;
                                             (:file "clause-detach-delete")
                                             (:file "clause-set")
                                             (:file "clause-remove")
                                             (:file "clause-foreach")
                                             (:file "clause-merge")
                                             (:file "clause-call")
                                             (:file "clause-union")
                                             (:file "clause-union-all")
                                             (:file "clause-load-csv")
                                             (:file "clause-create-constraint")
                                             (:file "clause-drop-constraint")
                                             (:file "clause-create-index")
                                             (:file "clause-drop-index")))
                               (:file "clauses")
                               (:file "variables")))
                 (:file "functions"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "lang.cypher-test"))))
