class SectionsController < ApplicationController
  before_filter :find_survey

  def new
    @section = @survey.sections.new
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  protected
  def find_survey
    @survey = Survey.find_by_uid(params[:survey_id])
    unless @survey
      redirect_to root_path
    end
  end
end
