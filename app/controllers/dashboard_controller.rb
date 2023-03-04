class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @User = User.find_by(id: params[:id])
  end
end
