class CreateTickets < ActiveRecord::Migration[4.2]
  def change
    create_table :tickets do |t|
      t.integer :fan_id
      t.integer :event_id
      t.integer :price
    end
  end
end
