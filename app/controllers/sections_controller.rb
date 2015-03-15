class SectionsController < ApplicationController
  before_filter :find_survey

  def new
    @section = @survey.sections.new
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  def edit
    @section = @survey.sections.find(params[:id])
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  def create
    @section = @survey.sections.create!(params[:section])
    redirect_to survey_path(@survey) and return
  end

  def update
    @section = @survey.sections.find(params[:id])
    @section.update_attributes(params[:section])
    redirect_to survey_path(@survey) and return
  end

  def destroy
    @section = @survey.sections.find(params[:id])
    @section.destroy if @survey
    redirect_to survey_path(@survey) and return
  end

  protected
  def find_survey
    @survey = Survey.find_by_uid(params[:survey_id])
    unless @survey
      redirect_to root_path
    end
  end
end
