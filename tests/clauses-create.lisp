(defpackage lang.cypher-test.clauses-create
  (:use #:cl
        #:lang.cypher
        #:prove
        #:lang.cypher-test.utilities))
(in-package :lang.cypher-test.clauses-create)

;; NOTE: To run this test file, execute `(asdf:test-system :lang.cypher)' in your Lisp.

(plan nil)

;; https://neo4j.com/docs/cypher-manual/current/clauses/create/

(is-cypher :stmts   '("CREATE (n)")
           :encoded '(:create (:n)))


(is-cypher :stmts   '("CREATE (n),(m)")
           :encoded '(:create (:n) (:m)))


(is-cypher :stmts   '("CREATE (n:Person)")
           :encoded '(:create (:n :|Parson|)))


(is-cypher :stmts   '("CREATE (n:Person:Swedish)")
           :encoded '(:create (:n :|Parson| :|Swedish|)))


(is-cypher :stmts   '("CREATE (n:Person { name: 'Andy', title: 'Developer' })")
           :encoded '(:create (:n :|Person| (:name 'Andy' :title 'Developer'))))


(is-cypher :stmts   '("CREATE (a { name: 'Andy' })"
                      "RETURN a.name")
           :encoded '(:create (:a (:name 'Andy'))
                      :return :a.name))


(is-cypher :stmts   '("MATCH (a:Person),(b:Person)"
                      "WHERE a.name = 'A' AND b.name = 'B'"
                      "CREATE (a)-[r:RELTYPE]->(b)"
                      "RETURN type(r)")
           :encoded '(:match  (:a :|Parson|) (:b :|Parson|)
                      :where  (:and (:= :a.name "A") (:= :b.name "B"))
                      :create "(a)-[r:RELTYPE]->(b)"
                      return  (:type r)))


(is-cypher :stmts '("MATCH (a:Person),(b:Person)"
                    "WHERE a.name = 'A' AND b.name = 'B'"
                    "CREATE (a)-[r:RELTYPE { name: a.name + '<->' + b.name }]->(b)"
                    "RETURN type(r), r.name")
           :encoded nil)


(is-cypher :stmts '("CREATE p =(andy { name:'Andy' })-[:WORKS_AT]->(neo)<-[:WORKS_AT]-(michael { name: 'Michael' })"
                   "RETURN p")
           :encoded nil)


(is-cypher :stmts '("CREATE (n:Person $props)"
                    "RETURN n")
           :encoded nil)


(is-cypher :stmts '("UNWIND $props AS map"
                    "CREATE (n)"
                    "SET n = map")
           :encoded nil)


(finalize)
