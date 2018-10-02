class Audi < ApplicationRecord
 belongs_to :theatre, class_name: "Theatre", foreign_key: "theatre_id"
 has_many :shows
 has_many :tickets
 has_many :movies, through: :shows
 has_many :bookings, through: :shows

 validates :a_id, presence: true, numericality: { only_integer: true }
 validates :seat, presence: true, numericality: { only_integer: true }
 validates :theatre_id, presence: true, numericality: { only_integer: true }
end