class QuestionGroup < ActiveRecord::Base
  attr_accessible :allow_other_option, :position, :question_text, :question_type, :section_id
  belongs_to :section
end
