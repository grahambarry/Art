class ChangeColumnName < ActiveRecord::Migration
	def change
		rename_column :picture_frames, :aspect_frame, :aspect
	end
end