SELECT
  billing_account_id,
  usage.amount,
  usage.unit,
  credits,
  Cost,
  Currency,
  project.ancestry_numbers,
  project.id,
  project.name,
  sku.description,
  usage_start_time,
  usage_end_time,
FROM
  billing_dataset.enterprise_billing
WHERE
  project.name IN ('CTG - Dev',
    'CTG - Prod')
  AND service.description = 'Compute Engine'
  AND cost > 0
  AND EXTRACT(month FROM usage_end_time) = 9
  AND EXTRACT(year FROM usage_end_time) = 2020
ORDER BY
  project.name
