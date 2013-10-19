class CommunitiesUseCase::SummaryQuery < UseCase::Action
  class Member
    include Virtus
    attribute :display, String
  end

  class Link
    include Virtus
    attribute :display, String
    attribute :uri, String
    attribute :icon, String
    attribute :main, Boolean
  end

  class Community
    include Virtus
    attribute :identity, String
    attribute :display, String
    attribute :abstract, String
    attribute :city, String
    attribute :country, String
    attribute :members_count, Integer
    attribute :members, Array[Member]
    attribute :logo, String
    attribute :links, Array[Link]
  end

  def query(*args)
    Community.new(
      identity: rand(100),
      display: "SPRUG",
      abstract: "Passionative ruby programmers",
      city: 'Sankt-Peterburg',
      members_count: 10,
      logo: "/tmp/ruby.png",
      links: [
        { display: 'Google+', uri: '#', icon: 'google-plus', main: true},
        { display: 'Meetyps', uri: '#', icon: 'google-plus'}
      ]
    )
  end
end
