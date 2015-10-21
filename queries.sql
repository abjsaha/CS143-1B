SELECT first, last FROM Actor WHERE id IN (SELECT aid FROM MovieActor WHERE mid IN (SELECT id FROM Movie WHERE title="Die Another Day"));
-- At the innermost subquery, we obtain the ID of the movie Die Another Day. When then select the actor IDs that are paired with the ID of the movie. We then select first and last names from Actors with those IDs. 

SELECT COUNT(aid) FROM (SELECT aid FROM (SELECT aid, COUNT(aid) FROM MovieActor GROUP BY aid HAVING COUNT(aid)>1) AS S) AS T; 
-- In the innermost subquery, we return rows consisting of actor ID and the number of movies they have been in where the actor has been in at least one movie. We then select the aid's from those rows. We then select the aggregate COUNT() of those rows and return the result. 

SELECT * FROM Actor WHERE Last LIKE "A%" AND First LIKE "A%";
-- Here we choose Actors whose first and last name begin with 'A'