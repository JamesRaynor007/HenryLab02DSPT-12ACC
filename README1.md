# **Proyecto Individual II - Data Analytics** 
### *Por Alejandro Castellano - DSPT-12*

## **<u>Introducción</u>**
Bienvenidos/as al repositorio de visualización, en esta oportunidad les presentaré el trabajo realizado bajo el rol de  <u>Analista de Datos</u>. <br>
El trabajo consistió en **analizar datasets** de acceso público, los cuales se refieren a datos de la **industria de las telecomunicaciones en Argentina**, separados por segmentos respecto a *servicios de internet, telefonía celular (o móvil), televisión, telefonía fija* y servicios postales, entre otros. <br>
En mi caso, utilicé los datasets referidos a Internet, Televisión, Telefonía Móvil y Telefonía Fija. Siendo que, la parte interesada en recibir el Dashboard sería una **firma de telecomunicaciones**. <br>
Los datasets originales se encuentran disponibles en [ENACOM](https://indicadores.enacom.gob.ar/datos-abiertos).

## <u>**Primer Etapa + EDA</u>**
Una vez descargados, los archivos se encuentran en **formato .xlsx** (más conocido como Excel), por lo que la **carga en Python** fue hoja por hoja, algo que se observará en el archivo correspondiente a EDA. <br>
Como primer medida, *se analizaron las estructuras y el recuento obligatorio de faltantes, nulos y duplicados*. Hay comentarios sobre cada caso distinto del general, donde se marcan las <u>decisiones tomadas</u>. <br>

## <u>**Segunda Etapa - MySQL</u>**
Se realizó la *cración de una base de datos* **(telecomunicaciones)** como parte de una sugerencia, en la cual se cargaron los 22 datasets definitivos para luego ser importados a Power BI.
En el repositorio se encontrará una carpeta llamada **"database"**, en la que habrá un **archivo .SQL** para ser desplegado directamente y que genere la base de datos correspondiente.
A su vez, se incluyó un **archivo .PDF** en el que se relatan los pasos realizados para la conexión de la base de datos con Power BI para su visualización.


## <u>**Etapa Final - Dashboard </u>**
El Dashboard se elaboró de acuerdo a los *potenciales intereses de una empresa de telecomunicaciones*, con foco principal en los servicios de internet y de forma accesoria se desarrollaron páginas dedicadas a cada segmento complementario, sea para Telefonía Móvil, Televisión y Teléfono Fijo.
Entonces se detalla a continuación una guia orientativa de lo que se verá en el Dashboard.
Se menciona que se desarrollaron 4 filtros: <br>
- **Rango de Años**, permite seleccionar el período de análisis. (Ej:2020-2023). <br>
- **Selección de Año**, puntualiza en solo un año del período antes seleccionado. <br>
- **Provincia**, hay información que se está segmentada por esta variable.(Se pueden seleccionar una, varias y/o todas). <br>
- **Trimestre**, permite la selección individual o conjunta de los períodos. Se sugiere su combinación minuciosa para obtener información de valor. <br>

- **KPI** : Funcionan en conjunto, con filtros activados en Año específico, Provincias específica y Seleccionando un Trimestre.
            + **Medidor** : Muestra el valor del acceso actual, y el objetivo del valor del nuevo acceso (lo que debería alcanzarse en el próximo trimestre, +2%)
            + **Indicador** : Muestra el valor del próximo trimestre con el valor objetivo establecido en el medidor, en color verde si se cumple o en rojo si no se cumple.
(Lamentablemente hay un error que hace que solo funcione cuando se filtran los trimestres 1 y 4. No pude encontrar el motivo y el tiempo se agotó).

** Considerar que en todos los casos, el año 2024 está por la mitad, por lo que su análisis debe ser cauteloso al momento de comparar con otros años.**


## <u>**Conclusiones</u>**
Se analizaron muchos datasets, se encontraron anomalias, datos inútiles y redundancia. Se intentó purgar lo irrelevante y generar un análisis lo más limpio, conciso y razonable posible dentro de los conocimientos y las limitaciones inherentes a la tarea.
Considero que la información desplegada es suficiente para tomar una decisión respecto a que tipo de servicio, consumidores y ubicaciones deberían llevarse a cabo en la empresa.
En el cierre del dashboard se encuentran las conclusiones referidas a la información analizada.
Quedaré atento a propuestas de mejoras, hay errores y siempre se puede mejorar.


## <u>**Agradecimientos</u>**
A Henry por la posibilidad y a todo/a aquel/la interesado/a en el repositorio. <br>
**Muchas Gracias**
