class ApiController < ApplicationController
  before_action :authenticate_user!

  private

  def authenticate_user!
    unless current_user
      render json: { error: 'You must be logged in to access this resource' }, status: :unauthorized
    end
  end
end
