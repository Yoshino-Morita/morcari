class Image < ActiveRecord::Base
  belongs_to :item

  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :image,
  styles: { medium: "300x300>", thumb: "100x100>" },
  url: "/assets/item_images"
  # url: "/:class/:attachment/:id/:style_:filename"
  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
