class SurveysController < ApplicationController
  def index
    @surveys = Survey.where(:public => true)
  end

  def new
    @survey = Survey.new
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  def edit
    @survey = Survey.find_by_uid(params[:id])
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  def create
    @survey = Survey.new(params[:survey])
    @survey.uid = SecureRandom.uuid
    @survey.save!
    redirect_to survey_path(@survey) and return
  end

  def update
    @survey = Survey.find_by_uid(params[:id])
    @survey.update_attributes!(params[:survey])
    redirect_to survey_path(@survey) and return
  end

  def show
    @survey = Survey.find_by_uid(params[:id])
  end
end
