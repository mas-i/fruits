# README

# アプリ名
<h1 align="center">旬のフルーツしらべ太郎</h1>

## アプリの概要
- 都道府県,月を選択する事でその地域の旬のフルーツを調べる事ができるアプリです。
- 旬のフルーツをクリックすると品種の一覧がさらに表示されます。
- ユーザーが気に入ったフルーツはお気に入り登録する事ができ、マイページから閲覧できます。
- 品種,レビュー,販売所の情報は各ユーザーも登録ができます。

## :paperclip: 主な使用言語
<a><img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" /></a> <!-- rubyのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" /></a> <!-- RubyOnRailsのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774618-b32edb80-2fb5-11ea-9050-d5929a49e9a5.png" height="60px;" /></a> <!-- Hamlのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774644-115bbe80-2fb6-11ea-822c-568eabde5228.png" height="60px" /></a> <!-- Scssのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774768-d064a980-2fb7-11ea-88ad-4562c59470ae.png" height="65px;" /></a> <!-- jQueryのロゴ -->

# :page_facing_up: DB設計

## Usersテーブル

|Column|Type|Options|
|------|----|-------|
|nick_name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :fruits
- has_many :favorites
- has_many :reviews

## Favoritesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|variety_id|references|null: false, foreign_key: true|
|favorite|integer||

### Association
- belongs_to :user
- belongs_to :variety

## Reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|variety_id|references|null: false, foreign_key: true|
|review|text||

### Association
- belongs_to :user
- belongs_to :variety

## Fruitsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|name|string|null: false|
|explain|text|null: false|
|image|string|null: false|

### Association
- has_many :varieties
- has_many :origins, through: :fruits_origins
- has_many :fruits_origins
- has_many :seasons
- belongs_to :user

## Varietiesテーブル

|Column|Type|Options|
|------|----|-------|
|fruit_id|references|null: false, foreign_key: true|
|name|string|null: false|
|explain|text|null: false|
|image|string|null: false|

### Association
- has_many :favorites
- has_many :reviews
- has_many :sales offices
- belongs_to :fruit

## Fruits_Originsテーブル

|Column|Type|Options|
|------|----|-------|
|fruit_id|references|null: false, foreign_key: true|
|origin_id|references|null: false, foreign_key: true|

### Association
- belongs_to :fruit
- belongs_to :origin

## Originsテーブル

|Column|Type|Options|
|------|----|-------|
|prefecture|string|null: false|
|city|string||

### Association
- has_many :fruits, through: :fruits_origins
- has_many :fruits_origins

## Seasonsテーブル

|Column|Type|Options|
|------|----|-------|
|fruit_id|references|null: false, foreign_key: true|
|month|integer|null: false, unique: true|

### Association
- has_many :fruits
