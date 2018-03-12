class AddDefaultRecordingType < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:albums, :recording_type, 'studio')
  end
end
