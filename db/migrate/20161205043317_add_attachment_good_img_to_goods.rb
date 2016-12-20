class AddAttachmentGoodImgToGoods < ActiveRecord::Migration
  def self.up
    change_table :goods do |t|
      t.attachment :good_img
    end
  end

  def self.down
    remove_attachment :goods, :good_img
  end
end
