/* Mostrar nombre y apellido de todos los Terapeutas*/
SELECT nombre, apellido FROM suptech.terapeuta;
/* Mostrar nombre y apellido del Terapeuta con dni=99999999A*/
SELECT nombre, apellido FROM suptech.terapeuta WHERE dni='99999999A';
/* Mostrar nombre y apellido del Terapeuta en la cuenta A99999999*/
SELECT nombre, apellido FROM suptech.terapeuta WHERE cuenta_id='A99999999';
/* Mostrar nombre y apellido de todos los Usuarios*/
SELECT nombre, apellido FROM suptech.usuario;
/* Mostrar nombre y apellido del usuario con DNI 87276482V*/
SELECT nombre, apellido FROM suptech.usuario WHERE dni='87276482V';
/* Mostrar informacion de los usuaios del Colegio Ninos Malos*/
SELECT u.nombre, u.apellido FROM suptech.usuario AS u INNER JOIN suptech.cuenta AS c ON c.cif=u.cuenta_id WHERE c.nombre='Colegio Ninos Malos';
/* Mostrar informacion de los usuaios accesibles para el terapeuta con DNI 99999999A*/
SELECT u.nombre, u.apellido FROM suptech.usuario AS u INNER JOIN suptech.tiene_asignado AS t ON t.usuario_id=u.dni WHERE t.terapeuta_id='99999999A';
/* Numero de usuarios que el terapeuta Julio Sandini tiene*/
SELECT COUNT(*) FROM suptech.tiene_asignado AS u INNER JOIN suptech.terapeuta AS t ON u.terapeuta_id=t.dni WHERE t.nombre='Julio' AND t.apellido='Sandini';
/* Numero de usuarios que un tiene y nombre y apellido del terapeuta*/
SELECT t.nombre, t.apellido, COUNT(*) FROM suptech.tiene_asignado AS u INNER JOIN suptech.terapeuta AS t ON u.terapeuta_id=t.dni GROUP BY t.dni;
