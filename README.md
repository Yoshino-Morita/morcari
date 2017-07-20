== README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index :users, :name, unique: true|
|e-mail|string|null: false,unique: true|
|nickname|string|null: false,add_index :users, :name, unique: true|
|user-image|string|null: false|
|total_money|integer|
|review_id|integer|null: false, foreign_key: true|
|area_id|integer|null: false, foreign_key: true|

### Association
- has_many :items, dependent: :detroy
- has_many :reviews
- has_one :area

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,add_index :items, :name|
|money_id|integer|null: false, foreign_key: true|
|area_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|item_image_id1|integer|null: false, foreign_key: true|
|item_image_id2|integer|foreign_key: true|
|item_image_id3|integer|foreign_key: true|

### Association
- has_many :images
- has_one :area
- has_one :brand
- has_one :category
- has_one :money
- belongs_to :user

## reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|
|value|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item

## moneyテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item

## areaテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- belongs_to :user
- belongs_to :item

## brandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- belongs_to :item

## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- belongs_to :item
