-- table: users
-- select non deleted users
-- column "password" should not be contained

SELECT id, name, gender, created_at, deleted_at
FROM users
WHERE deleted_at IS NULL;
