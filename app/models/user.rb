class User < ApplicationRecord

  #Association between Creator and Events 
  has_many :created_events, class_name: "Event", foreign_key: "creator_id"


  #Association between Attendee and Events 
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event 
end
