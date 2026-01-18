CREATE OR REPLACE TABLE `ventas_retail.reporte_dashboard` AS
SELECT
  fecha,
  cantidad AS ventas_reales,
  NULL AS ventas_pronosticadas,
  NULL AS limite_inferior,
  NULL AS limite_superior
FROM
  `ventas_retail.historial_ventas`
UNION ALL
SELECT
  DATE(forecast_timestamp) AS fecha,
  NULL AS ventas_reales,
  forecast_value AS ventas_pronosticadas,
  prediction_interval_lower_bound AS limite_inferior,
  prediction_interval_upper_bound AS limite_superior
FROM
  ML.FORECAST(MODEL `ventas_retail.modelo_forecast_ventas`,
              STRUCT(365 AS horizon, 0.9 AS confidence_level));
