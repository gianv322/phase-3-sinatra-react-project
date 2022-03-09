class CreateBuild < ActiveRecord::Migration[6.1]
  def change
    create_table :builds do |t|
      t.string :name
      t.integer :total_price
      t.string :case
      t.string :cpu
      t.string :gpu
      t.string :motherboard
      t.timestamps
    end
  end
end
