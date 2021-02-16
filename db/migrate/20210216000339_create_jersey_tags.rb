class CreateJerseyTags < ActiveRecord::Migration[6.0]
  def change
    create_table :jersey_tags do |t|
      t.references :jersey, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
