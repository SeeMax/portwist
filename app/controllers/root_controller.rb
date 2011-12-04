class RootController < ApplicationController
  def terms
    render 'terms', :layout => 'modal'
  end
end
