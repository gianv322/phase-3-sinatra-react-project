class CreateList < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.integer :build_id
      t.integer :part_id
      t.string :name
    end
  end
end
