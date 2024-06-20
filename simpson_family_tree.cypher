// Knoten erstellen
CREATE (abraham:Person {name: 'Abraham J. Simpson'})
CREATE (jacqueline:Person {name: 'Jacqueline Bouvier'})
CREATE (clancy:Person {name: 'Clancy Bouvier'})
CREATE (mona:Person {name: 'Mona Simpson'})
CREATE (homer:Person {name: 'Homer Simpson'})
CREATE (marge:Person {name: 'Marge Simpson'})
CREATE (bart:Person {name: 'Bart Simpson'})
CREATE (lisa:Person {name: 'Lisa Simpson'})
CREATE (maggie:Person {name: 'Maggie Simpson'})
CREATE (patty:Person {name: 'Patty Bouvier'})
CREATE (selma:Person {name: 'Selma Bouvier'})
CREATE (ling:Person {name: 'Ling Bouvier'})
CREATE (herbert:Person {name: 'Herbert Powell'})
CREATE (abbie:Person {name: 'Abbie'})
CREATE (edwina:Person {name: 'Edwina'})
CREATE (unbekannt:Person {name: '???'})

// Beziehungen erstellen
CREATE (abraham)-[:SPOUSE]->(mona)
CREATE (jacqueline)-[:SPOUSE]->(clancy)
CREATE (abraham)-[:FATHER]->(homer)
CREATE (mona)-[:MOTHER]->(homer)
CREATE (jacqueline)-[:MOTHER]->(marge)
CREATE (clancy)-[:FATHER]->(marge)
CREATE (homer)-[:SPOUSE]->(marge)
CREATE (homer)-[:FATHER]->(bart)
CREATE (marge)-[:MOTHER]->(bart)
CREATE (homer)-[:FATHER]->(lisa)
CREATE (marge)-[:MOTHER]->(lisa)
CREATE (homer)-[:FATHER]->(maggie)
CREATE (marge)-[:MOTHER]->(maggie)
CREATE (jacqueline)-[:MOTHER]->(patty)
CREATE (clancy)-[:FATHER]->(patty)
CREATE (jacqueline)-[:MOTHER]->(selma)
CREATE (clancy)-[:FATHER]->(selma)
CREATE (selma)-[:MOTHER]->(ling)
CREATE (abraham)-[:FATHER]->(herbert)
CREATE (abraham)-[:FATHER]->(abbie)
CREATE (edwina)-[:MOTHER]->(abbie)
CREATE (unbekannt)-[:MOTHER]->(herbert)