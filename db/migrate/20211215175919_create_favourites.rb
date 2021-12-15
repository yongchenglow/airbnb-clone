class CreateFavourites < ActiveRecord::Migration[6.1]
  def change
    create_table :favourites do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :flat, null: false, foreign_key: true, index: true
      t.timestamps
    end
    add_index :favourites, [:user_id, :flat_id], unique: true
  end
end
