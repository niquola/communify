class ProfileRepository
  class << self
    def items
      @items ||= {}
    end

    def by_session_key(session_key)
      items[session_key]
    end

    def save(profile)
      profile.identity ||= rand(100)
      items[profile.identity] ||= profile
    end
  end
end
