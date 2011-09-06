CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJNPIOUJBLXWB5NNA',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory  = 'portwist'
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end
