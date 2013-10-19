class CommunitiesUseCase < UseCase
  query :countries
  query :cities, input: :country
  query :technologies, input: :country
  query :list
  query :summary, input: :identity
end
