-- table: users
-- Show duplicated entries here

-- エラー発生

SELECT users.*
FROM users INNER JOIN (
  SELECT name, password, gender, created_at, deleted_at
  FROM users
  GROUP BY name, password, gender, created_at, deleted_at
  HAVING COUNT(*) > 1
) CP
ON users.name = CP.name
AND users.password = CP.password
AND users.gender = CP.gender
AND users.created_at = CP.created_at
AND users.deleted_at = CP.deleted_at;
