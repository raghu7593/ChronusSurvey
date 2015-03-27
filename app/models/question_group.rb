class QuestionGroup < ActiveRecord::Base
  attr_accessible :allow_other_option, :position, :question_type, :section_id

  has_many :options, class_name: QuestionGroup::Option.name
  has_many :questions, class_name: QuestionGroup::Question.name
  module Type
    STRING        = 0
    TEXT          = 1
    SINGLE_CHOICE = 2
    MULTI_CHOICE  = 3
    RATING        = 4

    def self.all
      [STRING, TEXT, SINGLE_CHOICE, MULTI_CHOICE, RATING]
    end

    def self.logos
      {
        :string => "paragraph",
        :text => "bars",
        :single_choice => "dot-circle-o",
        :multi_choice => "check-square-o",
        :rating => "star"
      }
    end

    def self.question_type_conversion
      {
        :string => QuestionGroup::Type::STRING,
        :text => QuestionGroup::Type::TEXT,
        :single_choice => QuestionGroup::Type::SINGLE_CHOICE,
        :multi_choice => QuestionGroup::Type::MULTI_CHOICE,
        :rating => QuestionGroup::Type::RATING
      }
    end
  end
  belongs_to :section

  def has_options?
    self.question_type == QuestionGroup::Type::SINGLE_CHOICE || self.question_type == QuestionGroup::Type::MULTI_CHOICE
  end
end