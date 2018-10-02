class Booking < ApplicationRecord
 belongs_to :show, dependent: :destroy
 belongs_to :ticket
 has_many :user

 validates :no_of_seat, presence: true, numericality: { only_integer: true }

 after_update : do |booking|
 	@show.available_seat = seat - no_of_seat
 end

 after_destroy : do |booking|
 	@show.available_seat = available_seat + no_of_seat
 end
end