class PhotoUpload < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  mount_uploader :photo, PhotoUploader

  validates_presence_of :photo

  def as_json(*)
    json = super
    json["photo_url_m"] = photo.url(:m)
    json
  end
end
