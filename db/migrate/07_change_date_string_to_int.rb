class ChangeDateStringToInt < ActiveRecord::Migration[4.2]
  def change
    change_column :events, :date, :integer
  end
end
