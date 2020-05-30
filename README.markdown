# Lang.Cypher

[The Neo4j Cypher Manual v4.0](https://neo4j.com/docs/cypher-manual/current/)

# Usage

```
(let ((stmt "CREATE (n)"))
    (string= stmt (decode (encode stmt))))
```

```
(let ((stmt "CREATE (n)"))
    (encode stmt))
=> (:CREATE (:N))
```

```
(let ((stmt (:CREATE (:N))))
    (decode stmt))
=> "CREATE (n)"
```

# Parser

以下を参考に書いてみよう。
- [cl-lex と CL-Yacc で作る JSON パーサ](http://tanakahx.hatenablog.com/entry/2015/08/20/235933)
