class Ticket < ApplicationRecord
 belongs_to :booking
 belongs_to :audi, class_name: "Audi", foreign_key: "a_id"
 belongs_to :movie, class_name: "Movie", foreign_key: "m_id"

 validates :a_id, presence: true, numericality: { only_integer: true } 
 validates :m_id, presence: true, numericality: { only_integer: true }
end
