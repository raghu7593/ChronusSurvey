module QuestionGroupsHelper
  def question_type_to_text(question_type)
    case question_type
    when QuestionGroup::Type::STRING
      "string"
    when QuestionGroup::Type::TEXT
      "text"
    when QuestionGroup::Type::SINGLE_CHOICE
      "single choice"
    when QuestionGroup::Type::MULTI_CHOICE
      "multi choice"
    when QuestionGroup::Type::RATING
      "rating"
    else
      ""
    end
  end
end