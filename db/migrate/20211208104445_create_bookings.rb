class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :guest, null: false
      t.datetime :checkout_date, null: false
      t.datetime :checkin_date, null: false
      t.references :user, null: false, foreign_key: true, index: true
      t.references :flat, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
