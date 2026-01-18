CREATE OR REPLACE MODEL `ventas_retail.modelo_forecast_ventas`
OPTIONS(
  model_type='ARIMA_PLUS',
  time_series_timestamp_col='fecha',
  time_series_data_col='total_ventas'
) AS
SELECT
  fecha,
  SUM(cantidad) as total_ventas
FROM
  `ventas_retail.historial_ventas`
GROUP BY
  fecha;
