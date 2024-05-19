SELECT project.id, count(*) as count from `billing_dataset.enterprise_billing` GROUP BY project.id
