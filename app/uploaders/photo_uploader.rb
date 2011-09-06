require 'carrierwave/processing/rmagick'

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage Rails.env.production? ? :fog : :file

  def store_dir
    "photos/#{model.id}"
  end

  version :s do
    process :resize_to_limit => [100, 100]
  end

  version :m do
    process :resize_to_limit => [250, 250]
  end

  version :l do
    process :resize_to_limit => [500, 500]
  end

  version :xl do
    process :resize_to_limit => [800, 800]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
