class Reservation < ApplicationRecord
	validates :start_date, presence: true
	validates :end_date, presence: true
	belongs_to :listing
	belongs_to :host, class_name: "User"

def start_must_be_before_end_time
   errors.add(:start_date, "must be before end date") unless
       start_date < end_date
end

end

