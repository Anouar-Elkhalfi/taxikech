class Reservation < ApplicationRecord
  validates :start_location, presence: { message: "ne peut pas être vide" }
  validates :end_location, presence: { message: "ne peut pas être vide" }
  validates :reservation_date, presence: { message: "ne peut pas être vide" }
  validates :reservation_time, presence: { message: "ne peut pas être vide" }
end
