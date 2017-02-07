class CreatePicks < ActiveRecord::Migration[5.0]
  def change
    create_table :picks do |t|
      t.decimal :price
      t.references :seed, foreign_key: true

      t.timestamps
    end
  end
end
