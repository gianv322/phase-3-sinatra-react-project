class Component < ActiveRecord::Migration[6.1]
  def change
    binding.pry
    create_table :components do |t|
    t.string :name
    t.integer :price
    t.string :type
    end
  end
end
