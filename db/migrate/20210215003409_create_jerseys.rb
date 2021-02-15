class CreateJerseys < ActiveRecord::Migration[6.0]
  def change
    create_table :jerseys do |t|
      t.string :name
      t.string :size
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
