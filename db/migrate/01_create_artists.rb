class CreateArtists < ActiveRecord::Migration[4.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.string :price
    end
  end
end
