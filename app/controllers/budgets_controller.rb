class BudgetsController < ApplicationController
  def index
    @title = "#{current_user.first_name}'s Budget"
  end
end
