class ChoresController < ApplicationController
  def index
    @title = "#{current_user.first_name}'s Chores"
  end
end
