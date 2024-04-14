class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :start_location
      t.string :end_location
      t.date :reservation_date
      t.time :reservation_time

      t.timestamps
    end
  end
end
