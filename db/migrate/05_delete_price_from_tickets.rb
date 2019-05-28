class DeletePriceFromTickets < ActiveRecord::Migration[4.2]
  def change
    remove_column :tickets, :price
  end
end
