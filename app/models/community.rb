class Community
  include Virtus
  attribute :identity, String
  attribute :display, String
  attribute :abstract, String
  attribute :city, String
  attribute :country, String
  attribute :members_count, Integer
  attribute :logo, String
  attribute :tags, Array[String]
end
