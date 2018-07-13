class ChangeAlbumLiveConstraints < ActiveRecord::Migration[5.1]
  def change
    change_column :albums, :live, :boolean, null: true
  end
end
