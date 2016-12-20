class AddCatgoryIdToGoods < ActiveRecord::Migration[5.0]
  def change
    add_column :goods, :category_id, :integer
  end
end
