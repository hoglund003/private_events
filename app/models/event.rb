class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  has_many :event_attendees
  has_many :attendees, through: :event_attendees, source: :user

  scope :past, -> { where("datetime < ?", Time.now) }
  scope :upcoming, -> { where("datetime > ?", Time.now) }
  # def self.past
  #   Event.all.select {|e| e.datetime < Time.now}
  # end
  
  # def self.upcoming
  #   Event.all.select {|e| e.datetime > Time.now}
  # end
end
