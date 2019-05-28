class AddColumnsToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :status, :string
    add_column :events, :ticket_amount, :integer
    remove_column :events, :duration, :string 
  end
end
