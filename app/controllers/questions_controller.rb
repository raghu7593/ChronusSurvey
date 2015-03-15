class QuestionsController < ApplicationController
  before_filter :find_question

  def new
    @question_group = @section.question_groups.new
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  protected
  def find_question
    @survey = Survey.find_by_uid(params[:survey_id])
    unless @survey
      redirect_to root_path
    end
    @section = @survey.sections.find(params[:survey_id])
  end
end
