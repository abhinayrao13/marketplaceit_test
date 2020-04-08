class DashboardController < ApplicationController
  def index
    @events = Event.includes(meetings: [:requests, :users]).all
    @requests = Request.includes(:user, meeting: [:event]).all
  end
end
