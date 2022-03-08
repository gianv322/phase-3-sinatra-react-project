class CreatePart < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.integer :price
      t.string :category

      # GPU > AMD, Nvidia
    end
  end
end
