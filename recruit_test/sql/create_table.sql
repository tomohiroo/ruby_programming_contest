DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id integer PRIMARY KEY AUTOINCREMENT,
  name text NOT NULL,
  password text NOT NULL,
  -- 1は男性, 2は女性です。
  gender integer,
  created_at text NOT NULL,
  -- ユーザーを「削除」していない場合は`NULL`、「削除」した場合は`DATETIME`になります。
  deleted_at text NULL
);
