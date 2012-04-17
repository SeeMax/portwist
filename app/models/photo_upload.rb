class PhotoUpload < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  mount_uploader :photo, PhotoUploader

  validates_presence_of :photo

  def as_json(*)
    json = super
    json["photo_url"] = root_url.chomp('/') + photo.url
    json["photo_url_m"] = root_url.chomp('/') + photo.url(:m)
    json
  end
end
