class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :address, null: false
      t.integer :bed, null: false
      t.integer :bath, null: false
      t.integer :bedroom, null: false
      t.decimal :price, null: false
      t.float :latitude, null: true
      t.float :longitude, null: true
      t.references :user, null: false, index: true

      t.timestamps
    end
  end
end
