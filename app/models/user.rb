class User < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true
	validates :description, presence: true
	validates :phone_number, presence: true#, format: { with: /\A(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})\z/, message: “Please enter a valid french number” }
	has_many :listings
	has_many :reservations, foreign_key: 'host_id', class_name: "Reservation"
end
