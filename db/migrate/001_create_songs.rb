class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.boolean :released
      t.string :genre
      t.integer :release_year
      t.string :artist_name
    end
  end
end