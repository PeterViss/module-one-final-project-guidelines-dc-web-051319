class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :name
    end
  end
end
