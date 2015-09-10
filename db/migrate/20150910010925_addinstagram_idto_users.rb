class AddinstagramIdtoUsers < ActiveRecord::Migration
  def change
  	add_column :artists, :instgram_id, :string
  end
end
