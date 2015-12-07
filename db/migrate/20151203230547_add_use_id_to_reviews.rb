class AddUseIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :use_id, :integer
  end
end
