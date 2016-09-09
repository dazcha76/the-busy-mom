class CalendarsController < ApplicationController
  def index
    @title = "#{current_user.first_name}'s Calendar"
  end
end
