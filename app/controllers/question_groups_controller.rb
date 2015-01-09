class QuestionGroupsController < ApplicationController
  def new
    if params[:type] && QuestionGroup::Type.all.include?(params[:type])
      @question_group = QuestionGroup.new(:type => params[:type])
    else
      @question_type_with_logos = QuestionGroup::Type.logos
    end
  end
end