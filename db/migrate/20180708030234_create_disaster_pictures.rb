class CreateDisasterPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :disaster_pictures do |t|
      t.integer :credibility_count, default: 0
      t.date :take_photo_date
      t.references :accident_point

      t.timestamps
    end
  end
end
