class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :fan
      t.string :event
      t.integer :price
    end
  end
end
