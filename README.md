#　テーブル設計

## usersテーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name         | string | null: false               |
| first_name_kana    | string | null: false               |
| birth_day          | date   | null: false               |

### Association

-has_many : cats
-has_many : movie

## catsテーブル

| Column           | Type      | Options                        |
| ---------------- | --------- | ------------------------------ |
| name             | string    | null: false                    |
| user_id          | reference | null: false, foreign_key: true |
| cat_type_id      | integer   | null: false                    |
| birth_day        | date      |                                |

### Association

-has_one :user
-has_one_attached :image
-belongs_to_active_hash :cat_type

## moviesテーブル

| Column           | Type      | Options                        |
| ---------------- | --------- | ------------------------------ |
| title            | text      | null: false,                   |
| user_id          | reference | null: false, foreign_key: true |
| description      | text      | null: false                    |
| cat_id           | reference | null: false, foreign_key: true |
### Association

-has_one :user
-has_many :cats
-has_many :comments

## commentsテーブル
| Column           | Type      | Options                        |
| ---------------- | --------- | ------------------------------ |
| text             | text      | null: false                    |
| user_id          | reference | null: false, foreign_key: true |

### Association

-has_one :movie