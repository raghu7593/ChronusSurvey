class SurveysController < ApplicationController
  def index
  end

  def new
    @survey = Survey.new
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  def edit
  end

  def create
  end

  def update
  end

  def show
  end
end
