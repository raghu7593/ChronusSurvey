class QuestionGroupsController < ApplicationController
  def new
    if params[:question_type] && QuestionGroup::Type.all.include?(params[:question_type])
      @question_group = QuestionGroup.new(:question_type => params[:question_type])
    else
      @question_type_with_logos = QuestionGroup::Type.logos
    end
  end

  def create
    question_type = params[:question_group][:question_type]
    if question_type && QuestionGroup::Type.all.include?(question_type)
      @question_group = QuestionGroup.new(params[:question_group])
      if (question_type == QuestionGroup::Type::GRID) && (params[:titles].size > 0)
        params[:titles].each do |title|
          @question_group.questions.build(:title => title)
        end
      elsif (params[:titles].size == 1)
        @question_group.questions.build(:title => params[:titles][0])
      end
      if ((question_type == QuestionGroup::Type::GRID) || (question_type == QuestionGroup::Type::TICKBOX) || (question_type == QuestionGroup::Type::MULTIPLECHOICE)) && (params[:options].size > 0)
        params[:options].each do |title|
          @question_group.options.build(:title => title)
        end
      end
      @question_group.uid = SecureRandom.hex(5)
      @question_group.save!
    end

  end
end