class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :artist
      t.string :location
      t.string :date
      t.string :duration 
  end
end
