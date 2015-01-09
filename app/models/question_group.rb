class QuestionGroup < ActiveRecord::Base
  attr_accessible :allow_comments, :has_other_option, :question_type, :user_id
end
