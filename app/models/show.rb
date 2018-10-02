class Show < ApplicationRecord
 has_many :bookings	
 belongs_to :audi, class_name: "Audi", foreign_key: "a_id"
 belongs_to :movie, class_name: "Movie", foreign_key: "m_id"
 has_many :users, through: :bookings
 has_many :tickets, through: :bookings

 validates :a_id, presence: true, numericality: { only_integer: true }
 validates :m_id, presence: true, numericality: { only_integer: true }
 validates :available_seat, presence: true, numericality: { only_integer: true }
 validates :time, presence: true
end