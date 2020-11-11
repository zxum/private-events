class Event < ApplicationRecord

  #Events can be created by a User (also known as a Creator)
  belongs_to :creator, class_name: "User"

  #Events can be attend by many Users (also known as attendees)
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  #Upcoming Events 
  scope :upcoming, -> { where('date >= ?', Date.today) }
  scope :past, -> { where('date <= ?', Date.today) }
end
