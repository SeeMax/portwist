require 'carrierwave/processing/rmagick'

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage Rails.env.production? ? :fog : :file

  def store_dir
    "photos/#{model.id}"
  end

  version :home do
    process :resize_to_limit => [273, 232]
  end

  version :m do
    process :resize_to_limit => [250, 250]
  end

  version :l do
    process :resize_to_limit => [100, 100]
  end

  version :xl do
    process :resize_to_limit => [600, 600]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
