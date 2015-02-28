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
    params[:survey][:end_date] = Date.parse(params[:survey][:end_date]) if params[:survey][:end_date].present?
    @survey = Survey.new(params[:survey])
    @survey.uid = generate_secure_random
    @survey.save!
    redirect_to survey_path(@survey) and return
  end

  def update
    params[:survey][:end_date] = Date.parse(params[:survey][:end_date]) if params[:survey][:end_date].present?
    @survey = Survey.find_by_uid(params[:id])
    @survey.update_attributes!(params[:survey])
    redirect_to survey_path(@survey) and return
  end

  def show
    @survey = Survey.find_by_uid(params[:id])
  end

  private
  def generate_secure_random
    random_string = nil
    while random_string.nil?
      random_string = SecureRandom.hex(5)
      random_string = nil if Survey.find_by_uid(random_string)
    end
    random_string
  end
end
