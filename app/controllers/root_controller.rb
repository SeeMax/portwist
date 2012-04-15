class RootController < ApplicationController
  def terms
    render 'terms', :layout => 'modal'
  end

  def submit
  end

  def submit2
    render 'submit2', :layout => false
  end
end
