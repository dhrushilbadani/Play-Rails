class Comment < ActiveRecord::Base
    belongs_to :game
    validates :content, presence: true
end
