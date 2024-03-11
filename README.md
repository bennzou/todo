# アプリケーション名　　　　　	
todoスケジュールアプリ

# アプリケーション概要　　　　
紙に貼ってあるようにスケジュール表を書き込める事を目的に、「必要な機能にポイントを絞ってわかりやすく、簡潔に」使えるスケジュールアプリ

# URL	
　https://todo-application-g1l9.onrender.com

# テスト用アカウント　　　　　　　　
ID:newapp       PASS:7777

# 利用方法	　　　　　　　　　　　　　　　　　
ログインして、スケジュール表の左上の入力欄からタイトルと内容を入力、カレンダーにスケジュールが表示されます。スケジュール内容は編集可能

# アプリケーションを作成した背景
前職や日々のスケジュールを立てていく上で、自分だけの（又は家族や小チームで）使える、とにかく分かりやすくて使いやすい簡素的なスケジュール表を作りたかった

# 実装した機能についての画像やGIFおよびその説明


# 実装予定の機能	
１：チェックボックスを追加　　　　　　　　　２：写真添付機能

# データベース設計	
ER図を添付。

# 画面遷移図	

# 開発環境	
使用した言語　　　Ruby/JavaScript

# ローカルでの動作方法


# 工夫したポイント	
既存のアプリケーションとの区別化として、アプリケーション等に疎い形でも一目でわかるような簡潔さと、使い勝手の良さをバランスを取りたいという事を目標にしました。

# 改善点	　　
「わかりやすい」をコンセプトに実装しているが、何がどうわかりやすいのかを具体的にしたいと思います。又、todoアプリですので、チェックボックスも現在実装予定です

# 制作時間	
１０日間

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
| title      | string 　　　　　　　　| null: false 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　|
| content    | text   　　　　　　　　| null: false 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　|
| start_time | datetime  　　| null: false 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　   　|

### Association
- belongs_to :user
- has_many :user_blog

