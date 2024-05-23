![Imagen: Big Data Predictions](https://web.solmovsa.com/wp-content/uploads/2019/11/big-data-predictions.jpg)

# Evaluación de Daños en Vehículos de Exportación

## Introducción

Este proyecto analiza los daños ocurridos a vehículos durante su transporte y carga en el puerto de Lázaro Cárdenas, con destino a varios países incluyendo Corea, Estados Unidos, Chile y Canadá. El objetivo es identificar patrones de daño y correlacionarlos con las etapas y destinos específicos del proceso de exportación.


## Exploración de Datos

La exploración inicial se centró en tres reportes detallados que compartían una pieza clave de información: el VIN (número de identificación del vehículo). Esta fase fue crucial para entender la naturaleza y frecuencia de los daños documentados.

## Transformación de Datos

La transformación de los datos aseguró una base sólida para el análisis subsiguiente. Este proceso incluyó la homogeneización de formatos y la corrección de inconsistencias.

![Imagen: Proceso de transformación de datos](https://raw.githubusercontent.com/Robertogag/Proyecto-FInal-KeepCoding/bfdd0a859fcb6ae3dd111aaaf67f13badc0f9cf0/codigo%20python.png)

## Diseño de la Base de Datos

El diseño de la base de datos fue realizado con Draw.io, enfocándose en una estructura relacional que facilita consultas eficientes y almacenamiento lógico de la información.

![Imagen: Esquema de la base de datos](https://raw.githubusercontent.com/Robertogag/Proyecto-FInal-KeepCoding/bfdd0a859fcb6ae3dd111aaaf67f13badc0f9cf0/Base%20de%20datos%20relacional.png)

## Implementación en GCP Postgres

La base de datos se implementó en Google Cloud Platform usando Postgres, elegido por su capacidad para manejar grandes volúmenes de información de manera segura y eficiente.

![Imagen: Configuración de la base de datos en GCP](https://raw.githubusercontent.com/Robertogag/Proyecto-FInal-KeepCoding/bfdd0a859fcb6ae3dd111aaaf67f13badc0f9cf0/Instancia.png)

## Normalización e Importación de Datos

Los datos transformados fueron normalizados y cargados en la base de datos usando DBeaver, garantizando la integridad y accesibilidad de los datos.

![Imagen: Pantalla de importación de datos en DBeaver](https://raw.githubusercontent.com/Robertogag/Proyecto-FInal-KeepCoding/bfdd0a859fcb6ae3dd111aaaf67f13badc0f9cf0/SQL%20creaci%C3%B3n%20de%20tablas.png)

## Visualización en Power BI

Se desarrollaron visualizaciones en Power BI para ilustrar los hallazgos del análisis, permitiendo observar patrones y correlaciones de manera clara y efectiva.

![Imagen: Dashboard en Power BI](https://github.com/Robertogag/Proyecto-FInal-KeepCoding/blob/main/powerbi%20vis.png?raw=true)

## Aprendizajes y Experiencia en el Bootcamp

Este proyecto no solo fue una oportunidad increíble para aplicar conocimientos técnicos y crecer profesionalmente, sino que también me permitió profundizar significativamente en la gestión de datos y en la visualización con Power BI, una herramienta que decidí explorar por mi cuenta para tener un conocimiento extra de esta herramienta de visualización. Empecé el bootcamp de KeepCoding desde cero, con pocos conocimientos previos. Durante el bootcamp, recibimos un módulo increíble y muy completo sobre Tableau, lo que me motivó a expandir mis habilidades de visualización aprendiendo también Power BI. A lo largo de 12 meses llenos de esfuerzos intensos y emociones como una montaña rusa, mientras equilibraba mis obligaciones profesionales y personales, el bootcamp fue fundamental en mi formación. A pesar de los retos, he terminado con un conocimiento mucho más profundo y una gran apreciación por todas las experiencias compartidas. Agradezco sinceramente a KeepCoding por estos meses de aprendizaje, que han sido enormemente enriquecedores y transformadores.

## Conclusiones

El análisis detallado de los daños a vehículos en su proceso de exportación ha permitido identificar áreas críticas y sugerir mejoras en la logística. Estos hallazgos son esenciales para optimizar futuras operaciones y reducir incidencias.
