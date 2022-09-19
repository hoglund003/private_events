class CreateEventAttendees < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendees do |t|
      t.belongs_to :event, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
