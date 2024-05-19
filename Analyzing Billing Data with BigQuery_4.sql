select CONCAT(service.description, ' : ', sku.description) as Line_Item, COUNT(*) as NUM
FROM `billing_dataset.enterprise_billing`
GROUP BY
CONCAT(service.description, ' : ', sku.description)
