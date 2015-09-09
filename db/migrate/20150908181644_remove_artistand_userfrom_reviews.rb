class RemoveArtistandUserfromReviews < ActiveRecord::Migration
  def change
  	remove_column :reviews, :artist
  	remove_column :reviews, :user
  end
end
