SELECT p.Firstname,
p.lastname,
a.city,
a.state
FROM person p
LEFT JOIN address a
ON (p.PersonId = a.personID)