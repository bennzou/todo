# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

### Association
- has_many :user_blogs
- has_many :blogs

## user_blogs テーブル

| Column    | Type       | Options                        |
| ------    | ---------- | ------------------------------ |
| name      | references | null: false, foreign_key: true |
| content   | references | null: false, foreign_key: true |

### Association

- belongs_to :blog
- belongs_to :user


## blogs テーブル

| Column     | Type       | Options                        |
| -------    | ---------- | ------------------------------ |
| name       | references | null: false, foreign_key: true |
| title      | string     | null: false                    |
| content    | text       | null: false                    |
| start_time | datetime   | null: false                    |

### Association
- belongs_to :user
- has_many :user_blog