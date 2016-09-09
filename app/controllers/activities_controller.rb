class ActivitiesController < ApplicationController
  def index
    @title = "#{current_user.first_name}'s Activities"
  end
end
