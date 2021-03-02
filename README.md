# DB設計

## users

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| name               | string              | null: false             |
| email              | string              | null: false             |

### Association

* has_many :posts
* has_many :comments
- has_one  :target

## posts

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| text               | string              | null: false             |
| calorie            | string              | null: false             |
| user_id            | references          | foreign_key: true       |

### Association

* has_many   :comments
- belongs_to :user


## targets

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| weekly             | string              | null: false             |
| one_month          | string              | null: false             |
| user_id            | references          | foreign_key: true       |

- has_one  :user

## comments

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| comment_text       | string              | null: false             |
| user_id            | references          | foreign_key: true       |
| post_id            | references          | foreign_key: true       |

### Association

- belongs_to :user
