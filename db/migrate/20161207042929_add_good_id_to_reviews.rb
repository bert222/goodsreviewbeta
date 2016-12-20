class AddGoodIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :good_id, :integer
  end
end
