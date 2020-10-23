class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :full_address
      t.datetime :begins_at
      t.integer :doctor_id
      t.integer :user_id

      t.timestamps
    end
  end
end
