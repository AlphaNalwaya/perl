class Theatre < ApplicationRecord
 has_many :audis
 has_many :bookings
 has_many :tickets, through: :audis
 has_many :shows, through: :audis

 validates :name, presence: true
 validates :phone_no, presence: true, length: { maximum: 10 }, numericality: { only_integer: true }
 validates :address, presence: true, length: { maximum: 500 }

 after_create do |theatre|
 	puts "You have created a theatre"
 end
end