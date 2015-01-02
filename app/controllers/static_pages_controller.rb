class StaticPagesController < ApplicationController
  def credits
    respond_to do |format|
      format.js {render layout: false}
    end
  end
end
