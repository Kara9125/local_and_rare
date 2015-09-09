class AddUserIdandArtistIdtoReviews < ActiveRecord::Migration
  change_table :reviews do |t|
  	t.belongs_to :artist
  	t.belongs_to :user
  end
end
