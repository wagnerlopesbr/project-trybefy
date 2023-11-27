SELECT
  plans.name AS 'Plano',
  COUNT(users.id) as 'Quantidade de usuários'
FROM
  plans
    INNER JOIN users
      ON users.plan_id = plans.id
GROUP BY
  plans.name
;