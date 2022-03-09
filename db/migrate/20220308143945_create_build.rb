class CreateBuild < ActiveRecord::Migration[6.1]
  def change
    create_table :builds do |t|
      t.string :name
      t.integer :total_price

      t.integer :case
      t.integer :cpu
      t.integer :gpu
      t.integer :memory
      t.integer :storage
      t.integer :power_supply
      t.integer :motherboard
      t.integer :cpu_cooler
      
      t.timestamps
    end
  end
end
