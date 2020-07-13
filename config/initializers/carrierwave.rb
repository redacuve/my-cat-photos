CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     MyCatPhotos::Application.credentials.aws[:access_key_id],                        # required unless using use_iam_profile
      aws_secret_access_key: MyCatPhotos::Application.credentials.aws[:secret_access_key],                        # required unless using use_iam_profile
      use_iam_profile:       false,                         # optional, defaults to false
      region:                'us-south',                  # optional, defaults to 'us-east-1'
      host:                  nil,             # optional, defaults to nil
      endpoint:              'https://s3.us-south.cloud-object-storage.appdomain.cloud' # optional, defaults to nil
    }
    config.fog_directory  = 'my-cat-photos-cos-standard-cpm'                                      # required
    config.fog_public     = false                                                 # optional, defaults to true
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
  end