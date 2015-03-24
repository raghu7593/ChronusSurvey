class StaticPagesController < ApplicationController
  def credits
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  def pricing
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  def contact_me
    respond_to do |format|
      format.js {render layout: false}
    end
  end
end
