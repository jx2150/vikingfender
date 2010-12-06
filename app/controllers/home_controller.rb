class HomeController < ApplicationController
  before_filter :authenticate 
  
  def index
  end
  
  protected
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['TEST_USERNAME'] && password == ENV['TEST_PASSWORD']
    end
  end
end
