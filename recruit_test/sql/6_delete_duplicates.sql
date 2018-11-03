-- table: users
-- Delete the older entry (larger id) of any duplicated entries.

DELETE FROM users
WHERE id NOT IN (SELECT min_id from (SELECT MIN(id) min_id FROM users GROUP BY name, password, gender, created_at, deleted_at) tmp);
