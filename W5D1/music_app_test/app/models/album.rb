class Album < ApplicationRecord

  validates :title, :year, :band_id, presence: update_attributes
  validates :recording_type, presence: true, inclusion: { in: %w(studio live),
                                                          message: 'Invalid recording type' }

  belongs_to :band,
  class_name: :Band,
  foreign_key: :band_id
end
