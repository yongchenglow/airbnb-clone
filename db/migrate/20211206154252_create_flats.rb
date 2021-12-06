class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :title
      t.string :description
      t.string :address
      t.integer :bed
      t.integer :bath
      t.integer :bedroom
      t.decimal :price
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
