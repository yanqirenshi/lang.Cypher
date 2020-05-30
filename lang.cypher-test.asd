#|
  This file is a part of lang.cypher project.
|#

(defsystem "lang.cypher-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("lang.cypher"
               "prove"
               "alexandria")
  :components ((:module "tests"
                :components
                ((:test-file "lang.cypher"))))
  :description "Test system for lang.cypher"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
