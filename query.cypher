//show every person that have relationship with film "The Matrix"
MATCH (p:Person)-[r]-(m:Movie {title: 'The Matrix'})
RETURN p.name, type(r) AS relationship, r.roles
//show every actor of movie "The Matrix"
MATCH (p:Person)-[r:ACTED_IN]->(m:Movie {title: 'The Matrix'})
RETURN p.name, r.roles

//show all directors of movie "The Matrix"
MATCH (p:Person)-[r:DIRECTED]->(m:Movie {title: 'The Matrix'})
RETURN p.name

//show all movies that Keanu Reeves acted in
MATCH (p:Person{name: "Keanu Reeves"})-[r:ACTED_IN]-(m:Movie)
RETURN p.name, r.roles, m.title

//show number of movies that Tom Hanks acted in
MATCH (tom:Person {name: 'Tom Hanks'})-[:ACTED_IN]->(movie:Movie)
RETURN COUNT(movie) AS numberOfMovies


//1-4 Kanten zu Kevin Bacon
MATCH (bacon:Person {name: 'Kevin Bacon'})-[rel*1..4]-(hollywood)
RETURN bacon, rel, hollywood


//show all movies that Kevin Bacon acted in
MATCH (p:Person{name: "Kevin Bacon"})-[r:ACTED_IN]-(m:Movie)
RETURN p.name, r.roles, m.title


//show all person that have 4 or less hop relationship with Kevin Bacon
MATCH (bacon:Person {name: 'Kevin Bacon'})-[*1..4]-(hollywood)
RETURN COUNT(DISTINCT hollywood) AS numberOfNodes

//Länge von 1-4 zu 0-4, dann bleibt die Anzahl von Knoten gleich, da 0 Länge bedeutet nur Kevin Bacon selbst (den schon in dem Graph beinhaltet)

MATCH (bacon:Person {name: 'Kevin Bacon'})-[*1..6]-(hollywood)
RETURN COUNT(DISTINCT hollywood) AS numberOfNodes

//With KBZ 6 kann man alle Knoten in der Datenbank erreichen (Länge steigt, Menge von Knoten bleibt gleich)



//show all descendants of Abraham J. Simpson
MATCH (n:Person {name: 'Abraham J. Simpson'})-[rel*0..10]->(descendants)
RETURN descendants, rel

//Create recursive relationship between Bart Simpson and Abraham J. Simpson
Match(bart: Person {name: 'Bart Simpson'}), (abraham: Person {name: 'Abraham J. Simpson'}), (mona: Person {name: 'Mona Simpson'})
create (bart)-[:GRANDSON]->(abraham)
create (bart)-[:GRANDSON]->(mona)