INSERT INTO suptech.cuenta VALUES('A99999999', 'Colegio Ninos Malos', 'basic');
INSERT INTO suptech.cuenta VALUES('B88888888', 'Colegio Ninos Reguleros', 'free');
INSERT INTO suptech.cuenta VALUES('C77777777', 'Colegio Ninos BUenos', 'premium');
INSERT INTO suptech.cuenta VALUES('D66666666', 'Residencia AyMiMadre', 'premium');
INSERT INTO suptech.cuenta VALUES('E55555555', 'Residencia ZenorFeliz', 'free');
INSERT INTO suptech.cuenta VALUES('F44444444', 'Centro El topillo', 'premium');
INSERT INTO suptech.cuenta VALUES('G33333333', 'Centro AGritos', 'free');

INSERT INTO suptech.terapeuta VALUES('99999999A', 'Jorse', 'Luis', 'admin', 'A99999999');
INSERT INTO suptech.terapeuta VALUES('88888888B', 'Juan', 'Nito', 'regular', 'B88888888');
INSERT INTO suptech.terapeuta VALUES('77777777C', 'Ana', 'Torroja', 'regular', 'C77777777');
INSERT INTO suptech.terapeuta VALUES('66666666D', 'Bartolo', 'Meolitros', 'regular', 'D66666666');
INSERT INTO suptech.terapeuta VALUES('55555555E', 'Julio', 'Sandini', 'regular', 'E55555555');
INSERT INTO suptech.terapeuta VALUES('44444444F', 'Maria', 'Prieto', 'regular', 'F44444444');
INSERT INTO suptech.terapeuta VALUES('33333333G', 'Wilber', 'Anton', 'regular', 'G33333333');

INSERT INTO suptech.usuario VALUES('87276482V', 'Luis', 'Piedrahita', 30, 'A99999999');
INSERT INTO suptech.usuario VALUES('87123482W', 'Antonio', 'Ramirez', 45, 'B88888888');
INSERT INTO suptech.usuario VALUES('87355482P', 'Juana', 'Laluca', 98, 'C77777777');
INSERT INTO suptech.usuario VALUES('21232492B', 'Angel', 'Martin', 48, 'D66666666');
INSERT INTO suptech.usuario VALUES('82145768V', 'Patricia', 'Lutricia', 54,'E55555555');
INSERT INTO suptech.usuario VALUES('12345482J', 'Cahlos', 'Perez', 92, 'F44444444');
INSERT INTO suptech.usuario VALUES('12456482A', 'Toro', 'Meo', 65, 'G33333333');

INSERT INTO suptech.entorno(cuenta_id) VALUES('A99999999');
INSERT INTO suptech.entorno(cuenta_id) VALUES('A99999999');
INSERT INTO suptech.entorno(cuenta_id) VALUES('B88888888');
INSERT INTO suptech.entorno(cuenta_id) VALUES('B88888888');
INSERT INTO suptech.entorno(cuenta_id) VALUES('C77777777');
INSERT INTO suptech.entorno(cuenta_id) VALUES('D66666666');
INSERT INTO suptech.entorno(cuenta_id) VALUES('E55555555');
INSERT INTO suptech.entorno(cuenta_id) VALUES('G33333333');

INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Burbutech', 'Actuador', 'Tubo de burbuja naranja', 1);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Burbutech', 'Actuador', 'Tubo de burbuja azul', 2);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Burbutech', 'Actuador', 'Tubo de burbuja amarillo', 3);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Ventitech', 'Actuador', 'Ventilador', 1);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Ventitech', 'Actuador', 'Ventilador', 2);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Ventitech', 'Actuador', 'Ventilador', 3);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Ventitech', 'Actuador', 'Ventilador', 4);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Ventitech', 'Actuador', 'Ventilador', 5);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Ventitech', 'Actuador', 'Ventilador', 6);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('Ventitech', 'Actuador', 'Ventilador', 7);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('MindReadingSL', 'Sensor', 'Lector de ondas cerebrales', 1);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('MindReadingSL', 'Sensor', 'Lector de ondas cerebrales', 2);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('MindReadingSL', 'Sensor', 'Lector de ondas cerebrales', 3);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('MindReadingSL', 'Sensor', 'Lector de ondas cerebrales', 4);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('MindReadingSL', 'Sensor', 'Lector de ondas cerebrales', 5);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('MindReadingSL', 'Sensor', 'Lector de ondas cerebrales', 6);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('MindReadingSL', 'Sensor', 'Lector de ondas cerebrales', 7);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('LosRuidososSA', 'Actuador', 'Bocina potente', 8);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('LosRuidososSA', 'Actuador', 'Bocina potente', 7);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('LosRuidososSA', 'Actuador', 'Bocina potente', 6);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('LosRuidososSA', 'Actuador', 'Bocina potente', 5);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('LosRuidososSA', 'Actuador', 'Bocina potente', 4);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('LosRuidososSA', 'Actuador', 'Bocina potente', 3);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('LosRuidososSA', 'Actuador', 'Bocina potente', 2);
INSERT INTO suptech.dispositivo(marca, tipo, descripcion, entorno_id) VALUES('LosRuidososSA', 'Actuador', 'Bocina potente', 1);

INSERT INTO suptech.actividad(descripcion, entorno_id) VALUES ('Bailar con luces', 1);
INSERT INTO suptech.actividad(descripcion, entorno_id) VALUES ('Mirar fijamente burbujas', 2);
INSERT INTO suptech.actividad(descripcion, entorno_id) VALUES ('Terapia de viento', 3);
INSERT INTO suptech.actividad(descripcion, entorno_id) VALUES ('Terapia de ruido', 8);


INSERT INTO suptech.capacidad(tipo, descripcion, actividad_id) VALUES ('motriz', 'Mejorar la movilidad', 1);
INSERT INTO suptech.capacidad(tipo, descripcion, actividad_id) VALUES ('sensorial', 'Mejorar atencion', 2);
INSERT INTO suptech.capacidad(tipo, descripcion, actividad_id) VALUES ('intelectual', 'Hacer frente a adversidades', 3);
INSERT INTO suptech.capacidad(tipo, descripcion, actividad_id) VALUES ('intelectual', 'Soportar ruido', 4);
INSERT INTO suptech.capacidad(tipo, descripcion, actividad_id) VALUES ('intelectual', 'Reprimir el impulso de bailar', 1);

INSERT INTO suptech.tiene_asignado(terapeuta_id, usuario_id) VALUES ('99999999A', '87276482V');
INSERT INTO suptech.tiene_asignado(terapeuta_id, usuario_id) VALUES ('55555555E', '82145768V');




