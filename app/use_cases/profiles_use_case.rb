class ProfilesUseCase < UseCase
  command :sign_in, :omniauth_hash, out: [:session_key]
  query :profile, :session_key
  command :add_social_info!

  class ProfileQuery < UseCase::Action
    def query(session_key)
      OpenStruct.new(name: 'John Doe', social_profiles: [1])
    end
  end
end
