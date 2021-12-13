class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :content, null: true
      t.references :user, null: false, foreign_key: true, index: true
      t.references :flat, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
