SELECT
  full_name as 'Nome completo',
  email as 'E-mail'
FROM
  users
WHERE
  active = true;
;