class Good < ActiveRecord::Base
belongs_to :user
belongs_to :category
has_many :reviews

has_attached_file :good_img, styles: { good_index: "250x350>", good_show: "325x475>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :good_img, content_type: /\Aimage\/.*\z/
end

