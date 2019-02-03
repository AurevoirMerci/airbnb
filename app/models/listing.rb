class Listing < ApplicationRecord
	validates :beds, presence: true, numericality: { greater_than_or_equal_to: 1 }
	validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
	validates :description, presence: true, length: { minimum: 5 }
	validates :wifi, presence: true
	validates :welcome, presence: true
	belongs_to :city
	belongs_to :user
	has_many :reservations
end
