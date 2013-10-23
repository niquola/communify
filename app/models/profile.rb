class Profile
  include Virtus.model

  class SocialProfile
    include Virtus.model
    attribute :identity, String
    attribute :type, String
  end

  attribute :identity, String
  attribute :name, String
  attribute :avatar, String
  attribute :social_profiles, Array[SocialProfile]

  def add_social_profile(profile_attrs)
    self.social_profiles << SocialProfile.new(profile_attrs)
  end
end
