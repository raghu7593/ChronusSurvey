class QuestionGroup::Option < ActiveRecord::Base
  attr_accessible :question_group_id, :title

  belongs_to :question_group
end
