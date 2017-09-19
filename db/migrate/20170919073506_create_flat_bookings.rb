class CreateFlatBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :flat_bookings do |t|
      t.float :agreement_amount
      t.datetime :date_of_booking
      t.float :base_price
      t.string :area

      t.timestamps
    end
  end
end
