class CreateHeroinepowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroinepowers do |t|
      t.integer :power_id
      t.integer :heroine_id 

      t.timestamps
    end
  end
end
