class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :content, null: true
      t.references :user, null: false, foreign_key: true, index: true
      t.references :booking, null: false, foreign_key: true, index: true, unique:true
      t.timestamps
    end
  end

end
