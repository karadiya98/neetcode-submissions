SELECT DISTINCT 
    first_name, 
    last_name, 
    city, 
    state 
FROM person p
left JOIN address a ON p.person_id = a.person_id;