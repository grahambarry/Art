class AddPinToMicroposts < ActiveRecord::Migration
  def change
    add_reference :microposts, :pin, index: true, foreign_key: true
    add_index :microposts, [:pin_id, :created_at]
  end
end
