# アプリケーション名　　　　　	
todoスケジュールアプリ

# アプリケーション概要　　　　
紙に貼ってあるようにスケジュール表を書き込める事を目的に、「必要な機能にポイントを絞ってわかりやすく、簡潔に」使えるスケジュールアプリ

# URL	　　　　　　　　　　　　　　　　　　　　　　　　　
デプロイが済んでいない。デプロイが完了次第記載。

# テスト用アカウント　　　　　　　　
ログイン機能等を実装した場合は、ログインに必要な情報を記載。またBasic認証等を設けている場合は、そのID/Passも記載すること。

# 利用方法	　　　　　　　　　　　　　　　　　
ログインして、スケジュール表の左上の入力欄からタイトルと内容を入力、編集と

# アプリケーションを作成した背景
前職や日々のスケジュールを立てていく上で、自分だけの（又は家族や小チームで）使える、とにかく分かりやすくて使いやすい簡素的なスケジュール表を作りたかった

# 実装した機能についての画像やGIFおよびその説明
実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。


# 実装予定の機能	
１：チェックボックスを追加　　　　　　　　　２：写真添付機能

# データベース設計	
ER図を添付。

# 画面遷移図	

# 開発環境	
使用した言語　　　Ruby/JavaScript

# ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。

# 工夫したポイント	
制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。

# 改善点	　　
「わかりやすい」をコンセプトに実装しているが、何がどうわかりやすいのかを具体的にする

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

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | references | null: false, foreign_key: true |
| blog   | references | null: false, foreign_key: true |

### Association

- belongs_to :blog
- belongs_to :user


## blogs テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| blog    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :user_blogs
