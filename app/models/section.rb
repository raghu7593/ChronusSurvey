class Section < ActiveRecord::Base
  attr_accessible :position, :title, :survey_id
  acts_as_list scope: :survey
  belongs_to :survey
  has_many :question_groups
end
