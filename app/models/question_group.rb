class QuestionGroup < ActiveRecord::Base
  attr_accessible :allow_other_option, :position, :question_text, :question_type, :section_id

  module Type
    STRING        = 0
    TEXT          = 1
    SINGLE_CHOICE = 2
    MULTI_CHOICE  = 3
    RATING        = 4

    def self.all
      [STRING, TEXT, SINGLE_CHOICE, MULTI_CHOICE, RATING]
    end
  end
  belongs_to :section
end
