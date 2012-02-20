class PhotoSetsController < ApplicationController
  before_filter :authenticate, :only => [:index, :update]

  def create
    @photo_set = PhotoSet.new(params[:photo_set])
    if @photo_set.save
      render 'success'
    else
      render 'failure'
    end
  end

  def index
    @photo_sets = PhotoSet.all.reverse
  end

  def update
    PhotoSet.find(params[:id]).update_attribute(:status, params[:status])
    redirect_to photo_sets_path
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "portwist" && password == "heynow"
    end
  end
end
