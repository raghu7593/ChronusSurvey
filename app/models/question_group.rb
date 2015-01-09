class QuestionGroup < ActiveRecord::Base
  attr_accessible :allow_comments, :has_other_option, :type, :user_id, :uid
  extend FriendlyId
  friendly_id :uid

  module Type
    TEXT = "text"

    def self.all
      [TEXT]
    end
  end
end
