class User < ApplicationRecord
 belongs_to :booking

 validates :name, presence: true, length: { minimum: 2 },
 validates :phone_no, presence: true, length: { maximum: 10 }
 validates :age, presence: true, length: { minimum: 1 }
end