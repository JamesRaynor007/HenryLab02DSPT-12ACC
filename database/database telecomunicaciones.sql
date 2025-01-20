CREATE DATABASE IF NOT EXISTS telecomunicaciones;

USE telecomunicaciones;


CREATE TABLE IF NOT EXISTS 04_internet_velocidad_provincia(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR(30),
    Velocidad_MBPS_media_bajada FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/01-velocidadprovincia_internet.csv'
INTO TABLE 04_internet_velocidad_provincia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS 05_internet_tecnologia_provincia(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR(30),
    ADSL FLOAT,
    Cablemodem FLOAT,
    Fibra_Optica FLOAT,
    Wireless FLOAT,
    Otros FLOAT,
    Total FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/02-tecnologiaprovincia_internet.csv'
INTO TABLE 05_internet_tecnologia_provincia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 06_internet_penetracion_provincia(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR (30),
    Accesos_por_cada_100_hab FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/03-penetracionprovincia_internet.csv'
INTO TABLE 06_internet_penetracion_provincia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 07_internet_penetracion_hogares(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR (30),
    Accesos_por_cada_100_hogares FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/04-penetracionhogares_internet.csv'
INTO TABLE 07_internet_penetracion_hogares
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 08_internet_rangos_acceso(
	Año INT,
    Trimestre INT,
    Hasta_512_kbps INT,
    Entre_512_Kbps_y_1_Mbps INT,
    Entre_1_Mbps_y_6_Mbps INT,
    Entre_6_Mbps_y_10_Mbps INT,
    Entre_10_Mbps_y_20_Mbps INT,
    Entre_20_Mbps_y_30_Mbps INT,
    Mas_de_30_Mbps INT,
    OTROS INT,
    Total INT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/05-rangosacceso_internet.csv'
INTO TABLE 08_internet_rangos_acceso
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 09_internet_rangos_acceso_provincia(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR(30),
    Hasta_512_kbps INT,
    Entre_512_Kbps_y_1_Mbps INT,
    Entre_1_Mbps_y_6_Mbps INT,
    Entre_6_Mbps_y_10_Mbps INT,
    Entre_10_Mbps_y_20_Mbps INT,
    Entre_20_Mbps_y_30_Mbps INT,
    Mas_de_30_Mbps INT,
    OTROS INT,
    Total INT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/06-accesosrango_internet.csv'
INTO TABLE 09_internet_rangos_acceso_provincia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 10_internet_dial_banda_provincia(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR(30),
    Total INT,
    Banda_ancha_fija_en_Miles FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/07-dialbanda_internet.csv'
INTO TABLE 10_internet_dial_banda_provincia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS 11_internet_ingresos(
	Año INT,
    Trimestre INT,
    Ingresos_en_miles_de_millones_de_pesos FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/08-ingresos_internet.csv'
INTO TABLE 11_internet_ingresos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 12_telefonia_movil_portabilidad(
	Año INT,
	Trimestre INT,
    Total_General FLOAT
    );

LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/09-portabilidad.csv'
INTO TABLE 12_telefonia_movil_portabilidad
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 13_telefono_fijo_provincia_tipo_acceso(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR(30),
    Accesos_telefonia_fija_total INT,
    Accesos_telefonia_fija_hogares INT,
    Accesos_telefonia_fija_comercial INT,
    Accesos_telefonia_fija_gobierno INT,
    Accesos_telefonia_fija_otros INT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/10-provinciatipo_telefonofijo.csv'
INTO TABLE 13_telefono_fijo_provincia_tipo_acceso
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS 14_telefono_fijo_penetracion_provincia(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR(30),
    Accesos_telefonia_fija_por_cada_100_hab FLOAT,
    Accesos_telefonia_fija_por_cada_100_hogares FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/11-penetracionprovincia_telefonofijo.csv'
INTO TABLE 14_telefono_fijo_penetracion_provincia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS 15_telefono_fijo_ingresos(
	Año INT,
    Trimestre INT,
    Ingresos_en_millones_de_pesos FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/12-ingresos_telefonofijo.csv'
INTO TABLE 15_telefono_fijo_ingresos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS 16_telefonia_movil_sms(
	Año INT,
    Trimestre INT,
    SMS_salientes_en_millones FLOAT
    );

LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/13-sms.csv'
INTO TABLE 16_telefonia_movil_sms
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 17_telefonia_movil_llamadas(
	Año INT,
    Trimestre INT,
    Llamadas_pospago_salientes_millones FLOAT,
    Llamadas_prepago_salientes_millones FLOAT,
    Total_de_llamadas_salientes_millones FLOAT
    );

LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/14-llamadas_telefoniamovil.csv'
INTO TABLE 17_telefonia_movil_llamadas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 18_telefonia_movil_minutos(
	Año INT,
    Trimestre INT,
    Minutos_pospago_salientes_millones FLOAT,
    Minutos_prepago_salientes_millones FLOAT,
    Total_de_minutos_salientes_millones FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/15-minutos_telefoniamovil.csv'
INTO TABLE 18_telefonia_movil_minutos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS 19_telefonia_movil_ingresos(
	Año INT,
    Trimestre INT,
    Ingresos_miles_de_millones_de_$ FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/16-ingresos_telefoniamovil.csv'
INTO TABLE 19_telefonia_movil_ingresos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 20_telefonia_movil_accesos_totales(
	Año INT,
    Trimestre INT,
    Accesos_por_cada_100_hab FLOAT
    );
    

LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/17-accesostotales_telefoniamovil.csv'
INTO TABLE 20_telefonia_movil_accesos_totales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 21_tv_accesos_provincia(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR(30),
    Accesos_TV_por_suscripcion_en_miles FLOAT
    );


LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/18-accesosprovincia_tv.csv'
INTO TABLE 21_tv_accesos_provincia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS 22_tv_accesos_totales(
	Año INT,
    Trimestre INT,
    Accesos_TV_por_suscripcion_en_millones FLOAT,
    Accesos_TV_satelital_en_millones FLOAT
    );
    

LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/19-accesostotales_tv.csv'
INTO TABLE 22_tv_accesos_totales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS 23_tv_ingresos(
	Año INT,
    Trimestre INT,
    Ingresos_TV_por_suscripcion_en_millones_de_$ FLOAT,
    Ingresos_TV_satelital_en_millones_de_$ FLOAT,
    Ingresos_TV_totales_en_millones_de_$ FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/20-ingresos_tv.csv'
INTO TABLE 23_tv_ingresos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 24_tv_penetracion_provincia(
	Año INT,
    Trimestre INT,
    Provincia VARCHAR(30),
    Accesos_TV_por_suscripcion_por_cada_100_hab FLOAT,
    Accesos_TV_por_suscripcion_por_cada_100_hogares FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/21-penetracionprovincia_tv.csv'
INTO TABLE 24_tv_penetracion_provincia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS 25_tv_penetracion_total(
	Año INT,
    Trimestre INT,
    Accesos_TV_por_suscripcion_por_cada_100_hab FLOAT,
    Accesos_TV_satelital_por_cada_100_hab FLOAT,
    Accesos_TV_por_suscripcion_por_cada_100_hogares FLOAT,
    Accesos_TV_satelital_por_cada_100_hogares FLOAT
    );
    
LOAD DATA INFILE 'D:/2023/aleca/OneDrive/Escritorio/Ale/2023/Exiting - Success/Proyectos/Data Science/Data Science/01-Parte 2 - Henry Labs/02 Data Analytics/datasetsprocesados/22-penetraciontotal_tv.csv'
INTO TABLE 25_tv_penetracion_total
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS 01_filtro_años (
    Año INT PRIMARY KEY
);


CREATE TABLE IF NOT EXISTS 02_filtro_trimestres (
    Trimestre INT PRIMARY KEY
);

DELIMITER //

-- Crea el procedimiento para llenar las tablas Años y Trimestres
CREATE PROCEDURE llenar_años_y_trimestres(IN start_year INT, IN end_year INT)
BEGIN
    DECLARE current_year INT;

    -- Llenar la tabla Años
    SET current_year = start_year;
    WHILE current_year <= end_year DO
        INSERT INTO 01_filtro_años (Año) VALUES (current_year);
        SET current_year = current_year + 1;
    END WHILE;

    -- Llenar la tabla Trimestres
    INSERT INTO 02_filtro_trimestres (Trimestre) VALUES (1), (2), (3), (4);
END //

DELIMITER ;

CALL llenar_años_y_trimestres(2014, 2024);


CREATE TABLE IF NOT EXISTS 03_filtro_provincias(
	Provincia VARCHAR(30) UNIQUE
    );
    

INSERT INTO 03_filtro_provincias (Provincia)
SELECT DISTINCT Provincia
FROM 04_internet_velocidad_provincia;