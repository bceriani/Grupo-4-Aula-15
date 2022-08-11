use peluqueria;

 /*Borre un animal que ya no va a ser atendido. 
Para ello consulte antes en el historial, 
algún animal que ya no sea atendido desde hace mucho tiempo.*/


-- consulta
select * from historial
where fecha < '2021-01-00';

-- se elimina de historial 
delete from historial where perro = 2;
