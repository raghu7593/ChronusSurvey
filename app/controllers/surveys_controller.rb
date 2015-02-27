class SurveysController < ApplicationController
  def index
    @surveys = Survey.where(:public => true)
  end

  def new
    sleep 3
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
    params[:survey][:end_date] = Date.parse(params[:survey][:end_date])
    @survey = Survey.new(params[:survey])
    @survey.uid = SecureRandom.hex(5)
    @survey.save!
    redirect_to survey_path(@survey) and return
  end

  def update
    params[:survey][:end_date] = Date.parse(params[:survey][:end_date])
    @survey = Survey.find_by_uid(params[:id])
    @survey.update_attributes!(params[:survey])
    redirect_to survey_path(@survey) and return
  end

  def show
    @survey = Survey.find_by_uid(params[:id])
    @question_groups = @survey.question_groups
  end
end
