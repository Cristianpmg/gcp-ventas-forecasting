Automatización de Forecasting de Ventas con IA Serverless en Google Cloud Platform

1. Descripción del Problema
Se identificó la necesidad de optimizar la gestión de inventario para una empresa de retail. Actualmente, la estimación de demanda se realiza de forma manual y reactiva, lo que genera riesgos de quiebre de stock o sobrealmacenamiento.

Objetivo: Desarrollar un pipeline automatizado en GCP que ingeste datos históricos, entrene un modelo de Machine Learning y visualice la proyección de ventas para los próximos 365 días.

2. Arquitectura de la Solución
La solución utiliza una arquitectura 100% Serverless, integrando más de 3 servicios nativos de GCP:

Google Cloud Storage (GCS): Data Lake para la recepción de archivos CSV crudos.

BigQuery: Data Warehouse para el almacenamiento y limpieza (ETL) de los datos.

BigQuery ML: Motor de Inteligencia Artificial para entrenar el modelo ARIMA_PLUS.

Looker Studio: Herramienta de visualización para el usuario final.


3. Paso a Paso Técnico
Paso 1: Ingesta de Datos (Extract)
Se cargaron los datos históricos de ventas en un Bucket de Cloud Storage en la región us-central1. Posteriormente, se creó una tabla nativa en BigQuery.

Paso 2: Limpieza de Datos (Transform)
Se detectaron problemas de formato en el archivo original (fechas en formato DD-MM-YYYY y separadores de punto y coma). Se implementó un proceso ETL utilizando SQL en BigQuery para normalizar la data.

Paso 3: Machine Learning (Processing)
Se entrenó un modelo de series temporales utilizando BigQuery ML.

Algoritmo: ARIMA_PLUS (con detección automática de estacionalidad y feriados).

Horizonte: Proyección a 365 días.

Accuracy: Intervalo de confianza del 90%.

Paso 4: Visualización (Load)
Se conectó BigQuery a Looker Studio para generar un tablero dinámico que compara las ventas históricas reales con la predicción futura.

4. Resultados
El sistema logró generar exitosamente una proyección para todo el año 2026. (Ver archivo PDF adjunto para capturas detalladas del Dashboard)

5. Conclusión
El proyecto demuestra cómo es posible implementar soluciones avanzadas de IA sin gestionar infraestructura (servidores), reduciendo costos operativos y tiempos de implementación.
