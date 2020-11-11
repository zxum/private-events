class RenameAttendeeEvents < ActiveRecord::Migration[5.2]
  def change
    rename_table :attendee_events, :attendances
  end
end
