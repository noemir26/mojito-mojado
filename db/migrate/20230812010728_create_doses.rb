class CreateDoses < ActiveRecord::Migration[7.0]
  def change
    create_table :doses do |t|
      t.string :quantity
      t.references :cocktail, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
