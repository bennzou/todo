# アプリケーション名　　　　　	
todoカレンダーアプリ

# アプリケーション概要　　　　
紙に貼ってあるようにカレンダー表の枠に書き込める事を目的に、「必要な機能にポイントを絞ってわかりやすく、簡潔に」使えるカレンダーアプリ

# URL	
　https://todo-application-g1l9.onrender.com

# テスト用アカウント　　　　　　　　
ID:newapp

PASS:7777

デモ用メールアドレス：ken@ken

デモ用PASSWORD：gggg7777

# 利用方法	　　　　　　　　　　　　　　　　　
ログインして、スケジュール表の左上の入力欄からタイトルと内容を入力、カレンダーに予定が表示されます。スケジュール内容は編集可能

# アプリケーションを作成した背景
前職や日々のスケジュールを立てていく上で、自分だけの（又は家族や小チームで）使える、とにかく分かりやすくて使いやすい簡素的なカレンダー表を作りたかった

# 実装した機能についての画像やGIFおよびその説明

カレンダー管理画面
![image](https://github.com/bennzou/todo/assets/154778086/dedecbb9-694d-4df3-8a35-56059f652e10)

・ユーザー登録機能：ユーザー新規登録画面から新規登録して、上記の管理画面に移行します
[![Image from Gyazo](https://i.gyazo.com/fffe1c25a925ee54c1f8cf38e2827df4.gif)](https://gyazo.com/fffe1c25a925ee54c1f8cf38e2827df4)

・予定登録機能：管理画面より、予定のタイトル、内容、日時を入力してカレンダー欄に入力します
[![Image from Gyazo](https://i.gyazo.com/01f93a7603c67cf99245a072806c88d3.gif)](https://gyazo.com/01f93a7603c67cf99245a072806c88d3)
# 実装予定の機能	
・チェックボックスを追加　

・写真添付機能

# データベース設計	
![todo](https://github.com/bennzou/todo/assets/154778086/8b3e3507-bbae-4f1d-a3fc-80906efe3a9b)


# 画面遷移図	
![image](https://github.com/bennzou/todo/assets/154778086/08135d6e-08ec-4d2c-bab8-64684c344ef6)


# 開発環境	
使用した言語　　　Ruby/JavaScript

# ローカルでの動作方法
％　git clone https://github.com/bennzou/todo

％　cd todo

％　bundle install

％　yarn install


# 工夫したポイント	
既存のアプリケーションとの区別化として、アプリケーション等に疎い形でも一目でわかるような簡潔さと、使い勝手の良さをバランスを取りたいという事を目標にしました。

# 改善点	　　
「わかりやすい」をコンセプトに実装しているが、何がどうわかりやすいのかを具体的にしたいと思います。又、todoアプリとして、チェックボックスも現在実装予定です
現時点での課題として、ユーザーごとの表示・非表示、と実装予定の機能を完了できていません。

# 制作時間	
10日間

# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

### Association

- has_one :user_blogs
- has_many :blogs

## user_blogs テーブル

| Column    | Type       | Options                        |
| ------    | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| blogs     | references | null: false, foreign_key: true |


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

