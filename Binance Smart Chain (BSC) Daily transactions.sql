SELECT
  DATE(block_time) AS block_date,
  COUNT(DISTINCT hash) AS daily_transactions /* Correct the column name to 'hash' */
FROM b3.transactions
WHERE
  block_time >= TRY_CAST('2024-11-01' AS TIMESTAMP)
GROUP BY
  1
ORDER BY
  block_date
