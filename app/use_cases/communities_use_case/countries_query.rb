class CommunitiesUseCase::CountriesQuery < UseCase::Action
  class Country
    include Virtus
    attribute :identity, String
    attribute :display, String
    attribute :cities, Array[String]
    attribute :logo, String
  end

  def query(*args)
    stub_item
  end

  def stub_item
    [
      Country.new(
        identity: rand(100),
        display: "Russia",
      ),
      Country.new(
        identity: rand(100),
        display: "USA",
      )
    ]
  end
end
