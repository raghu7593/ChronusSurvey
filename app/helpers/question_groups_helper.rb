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

  def render_question_group_preview(question_group)
    edit_survey_question_group_path(question_group)
  end
end