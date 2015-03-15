class Section < ActiveRecord::Base
  attr_accessible :position, :title, :survey_id
  belongs_to :survey
  has_many :question_groups
end
