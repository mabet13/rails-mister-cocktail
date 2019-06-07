class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.text :description
      t.belongs_to :cocktail, index: true
      t.belongs_to :ingredient, index: true
      t.timestamps
    end
  end
end
