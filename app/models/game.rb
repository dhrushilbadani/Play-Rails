class Game < ActiveRecord::Base
	acts_as_votable
    belongs_to :user
    has_many :comments
	validates :name, presence: true, uniqueness: true
    geocoded_by :location
    after_validation :geocode, :if => :location_changed?
end
