class HomeController < ApplicationController
  def index
    @title = "The Busy Mom"
    render 'index.html.erb', layout: 'application2'
  end
end
