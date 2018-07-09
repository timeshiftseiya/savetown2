class AddColumnToImageDisasterPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :disaster_pictures, :image, :string
  end
end
