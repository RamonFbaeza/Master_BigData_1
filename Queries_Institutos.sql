SELECT Nombre_Est, Puntos, Decision FROM Estudiantes,Solicitudes WHERE Estudiantes.ID = Solicitudes.ID AND Valor < 1000 AND Via = 'Tecnologia' AND Nombre_Inst = 'Instituto Ramiro de Maeztu'; 
SELECT Estudiantes.ID, Nombre_Est, Puntos, Solicitudes.Nombre_Inst, Plazas FROM Estudiantes, Institutos, Solicitudes WHERE Solicitudes.ID = Estudiantes.ID AND Solicitudes.Nombre_Inst = Institutos.Nombre_Inst ORDER BY Puntos DESC, Plazas; 
SELECT * FROM Solicitudes WHERE Via like '%Ciencias%';
SELECT ID, Nombre_Est, Puntos, Puntos*Valor/1000.0 as Ponderada FROM Estudiantes WHERE ABS(Puntos*(Valor/1000.0) - Puntos) > 1.0; 
DELETE FROM Solicitudes WHERE ID IN (SELECT ID FROM Solicitudes GROUP BY ID HAVING COUNT (DISTINCT Via) >2);
SELECT Via, Puntos FROM Estudiantes, Solicitudes WHERE Estudiantes.ID= Solicitudes.ID GROUP BY Via HAVING MAX(Puntos) < (Select AVG(Puntos) FROM Estudiantes); 
SELECT DISTINCT Nombre_Est, Via FROM Estudiantes JOIN Solicitudes ON Estudiantes.ID = Solicitudes.ID; 
SELECT Nombre_Est, Puntos FROM Estudiantes JOIN Solicitudes ON Estudiantes.ID = Solicitudes.ID AND Valor < 1000 AND Via='Tecnologia' AND Nombre_Inst= 'Instituto San Isidro';
 