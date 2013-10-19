class CommunityRepository
  class << self
    def search(q)
      [].tap do |res|
        res.concat [ Community.new(
          identity: rand(100),
          display: "SPRUG",
          abstract: Faker::Lorem.paragraph,
          city: 'Sankt-Peterburg',
          members_count: 10,
          logo: "/tmp/ruby.png",
          tags: ['ruby', 'javascript']
        ),
        Community.new(
          identity: rand(100),
          display: "Clojure SPB",
          abstract: Faker::Lorem.paragraph,
          city: 'Sankt-Peterburg',
          members_count: 10,
          logo: "/tmp/clojure.png",
          tags: ['clojure', 'functional programming']
        ),
        Community.new(
          identity: rand(100),
          display: "Piter United",
          abstract: Faker::Lorem.paragraph,
          city: 'Sankt-Peterburg',
          members_count: 10,
          logo: "/tmp/clojure.png",
          tags: ['social', 'communities']
        ),
        Community.new(
          identity: rand(100),
          display: "Agile Piter",
          abstract: Faker::Lorem.paragraph,
          city: 'Sankt-Peterburg',
          members_count: 10,
          logo: "/tmp/agile-piter.jpg",
          tags: ['lean', 'agile', 'products']
        )]
      end
    end
  end
end
