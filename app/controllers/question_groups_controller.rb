class QuestionGroupsController < ApplicationController
  before_filter :find_question_group

  def new
    question_type = params[:question_type]
    if question_type && QuestionGroup::Type.all.include?(QuestionGroup::Type.question_type_conversion[question_type.to_sym])
      @question_group = @section.question_groups.new(:question_type => QuestionGroup::Type.question_type_conversion[question_type.to_sym])
    else
      @question_type_with_logos = QuestionGroup::Type.logos
    end
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  protected
  def find_question_group
    @survey = Survey.find_by_uid(params[:survey_id])
    unless @survey
      redirect_to root_path
    end
    @section = @survey.sections.find(params[:survey_id])
  end
end
