class User < ApplicationRecord

  #Association between Creator and Events 
  has_many :created_events, class_name: "Event", foreign_key: "creator_id"


  #Association between Attendee and Events 
  has_many :attendee_events, foreign_key: "attendee_id"
  has_many :attended_events, through: :attendee_events, source: :event 
end
