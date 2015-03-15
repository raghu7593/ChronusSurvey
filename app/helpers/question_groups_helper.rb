module QuestionGroupsHelper
  def question_type_to_text(type)
    case type
    when QuestionGroup::Type::TEXT
      "text"
    when QuestionGroup::Type::MULTIPLECHOICE
      "multiple choice"
    when QuestionGroup::Type::TICKBOX
      "tick box"
    when QuestionGroup::Type::SCALE
      "scale"
    when QuestionGroup::Type::GRID
      "grid"
    else
      ""
    end
  end
end