CarrierWave.configure do |config|
  config.cache_dir = File.join Rails.root, 'tmp', 'uploads'

  # Settings for the local filesystem, the default.
  config.storage = :file
  config.root    = File.join Rails.root, 'public'

  # Stage specific configurations
  # case Rails.env.to_sym
  # when :production
  #   # If assets are hosted on Amazon S3:
  #   config.storage         = :fog
  #   config.fog_directory   = ENV['S3_BUCKET']
  #   config.fog_credentials = {
  #     provider:              'AWS',
  #     aws_access_key_id:     ENV['S3_KEY_ID'],
  #     aws_secret_access_key: ENV['S3_SECRET_KEY'],
  #     region:                ENV['S3_BUCKET_REGION']
  #   }
  # end
end