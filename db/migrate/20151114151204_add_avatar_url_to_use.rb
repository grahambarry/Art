class AddAvatarUrlToUse < ActiveRecord::Migration
  def change
    add_column :uses, :avatar_url, :string
  end
end
