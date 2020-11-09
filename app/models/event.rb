class Event < ApplicationRecord

  #Events can be created by a User (also known as a Creator)
  belongs_to :creator, class_name: "User"

  #Events can be attend by many Users (also known as attendees)
  has_many :attendee_events
  has_many :attendees, through: :attendee_events
end
