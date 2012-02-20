class RootController < ApplicationController
  def terms
    render 'terms', :layout => 'modal'
  end
  
  def submit
  end
end
