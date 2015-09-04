class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :user
      t.string :artist
      t.string :text

      t.timestamps null: false
    end
  end
end
