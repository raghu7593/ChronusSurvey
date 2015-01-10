class QuestionGroup < ActiveRecord::Base
  attr_accessible :allow_comments, :has_other_option, :type, :user_id, :uid
  extend FriendlyId
  friendly_id :uid

  module Type
    TEXT = "text"
    MULTIPLECHOICE = "multiple_choice"
    TICKBOX = "tick_box"
    SCALE = "scale"
    GRID = "grid"

    def self.all
      [TEXT, MULTIPLECHOICE, TICKBOX, SCALE, GRID]
    end

    def self.logos
    	{
    		:text => "paragraph",
    		:multiple_choice => "dot-circle-o",
    		:tick_box => "check-square-o",
    		:scale => "star",
    		:grid => "calendar"
    	}
    end
  end

  has_many :questions
  has_many :options
end
