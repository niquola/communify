class ProfilesUseCase < UseCase
  query :profile, :session_key
  command :sign_in, :omniauth_hash, out: [:session_key]
  command :update
  command :add_social_profile

  class ProfileQuery < UseCase::Action
    def query(session_key)
      ProfileRepository.by_session_key(session_key)
    end
  end

  class UpdateCommand < UseCase::Action
    def execute(session_key, attrs)
      profile = ProfileRepository.by_session_key(session_key)
      attrs.each do |k, v|
        profile.send("#{k}=",v)
      end
      ProfileRepository.save(profile)
    end
  end

  class AddSocialProfileCommand < UseCase::Action
    def execute(session_key, attrs)
      profile = ProfileRepository.by_session_key(session_key)
      profile.add_social_profile(attrs)
      ProfileRepository.save(profile)
    end
  end

  class SignInCommand < UseCase::Action
    def execute(omniauth_hash)
      profile = Profile.new(
        name: omniauth_hash[:info][:name],
        social_profiles: [{ type: omniauth_hash[:provider], identity: omniauth_hash[:uid] }]
      )
      ProfileRepository.save(profile)
      profile.identity
    end
  end
end
