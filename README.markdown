# Lang.Cypher

[The Neo4j Cypher Manual v3.5](https://neo4j.com/docs/cypher-manual/current/)

## Usage

```
(cypher ...)
```


### example

```
(string= (cyper (match (:john (name: "John")) (:--> (:friend)) (:all) (:--> (:friend)) (:fof))
                (return (:john.name :fof.name)))
         "MATCH (john {name: 'John'})-[:friend]->()-[:friend]->(fof) RETURN john.name, fof.name")
```

## Installation

