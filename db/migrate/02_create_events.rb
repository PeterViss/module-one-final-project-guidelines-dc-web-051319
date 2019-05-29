class CreateEvents < ActiveRecord::Migration[4.2]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :artist_id
      t.string :location
      t.datetime :date
      t.string :duration
    end
  end
end
