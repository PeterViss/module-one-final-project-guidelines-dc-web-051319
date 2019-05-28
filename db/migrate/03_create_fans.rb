class CreateFans < ActiveRecord::Migration[4.2]
  def change
    create_table :fans do |t|
      t.string :name
    end
  end
end
