class CreateAccidentPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :accident_points do |t|
      t.string :content
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
