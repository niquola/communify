class CommunitiesController < ApplicationController
  def index
    @communities = use_case.list
    respond_with @communities
  end

  def countries
    @countries = use_case.countries
  end

  def show
    @community = use_case.summary(params[:id])
    respond_with @community
  end

  private

  def use_case
    @use_case ||= CommunitiesUseCase.new(user: 'user')
  end
end
