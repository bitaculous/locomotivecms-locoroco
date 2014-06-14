CarrierWave.configure do |config|
  config.storage   = :file
  config.root      = File.join Rails.root, 'public'
  config.cache_dir = File.join Rails.root, 'tmp', 'uploads'
end