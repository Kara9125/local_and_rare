class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :location
      t.string :instagram_user_name

      t.timestamps null: false
    end
  end
end
