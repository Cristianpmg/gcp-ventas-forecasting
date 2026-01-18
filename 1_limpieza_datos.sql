CREATE OR REPLACE TABLE `ventas_retail.historial_ventas` AS
SELECT
  PARSE_DATE('%d-%m-%Y', SPLIT(string_field_0, ';')[SAFE_OFFSET(0)]) AS fecha,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(1)] AS producto,
  CAST(SPLIT(string_field_0, ';')[SAFE_OFFSET(2)] AS INT64) AS cantidad
FROM
  `ventas_retail.historial_ventas`
WHERE
  string_field_0 NOT LIKE '%Fecha%'
  AND string_field_0 IS NOT NULL;
