OmniAuth.config.logger = Rails.logger


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
    ENV['GOOGLE_OAUTH_ID'], ENV['GOOGLE_OAUTH_KEY']

  provider :twitter,
    ENV['TWITTER_OAUTH_ID'], ENV['TWITTER_OAUTH_KEY']

  provider :github,
    ENV['GITHUB_OAUTH_ID'], ENV['GITHUB_OAUTH_KEY']
end
