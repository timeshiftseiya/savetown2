class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :accident_point

      t.timestamps
    end
  end
end
