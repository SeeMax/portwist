class PhotoUploadsController < ApplicationController
  def create
    @photo_uploads = []

    params[:photo_upload][:photo].each do |photo|
      @photo_uploads << PhotoUpload.create!(:photo => photo)
    end

    render :json => @photo_uploads.to_json
  end
end
