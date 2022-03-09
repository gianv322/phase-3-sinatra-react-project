class CreatePart < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.integer :build_id

      # GPU > AMD, Nvidia
    end
  end
end
