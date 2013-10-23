class ProfilesUseCase::SignInCommand < UseCase::Action
  def execute(omniauth_hash)
    rand(1000)
  end
end
