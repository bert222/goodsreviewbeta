class CreateGoods < ActiveRecord::Migration[5.0]
  def change
    create_table :goods do |t|
      t.string :title
      t.text :description
      t.string :other

      t.timestamps
    end
  end
end
