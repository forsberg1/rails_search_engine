class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
  	#@cars = Search.search :conditions => {:brand => 'volvo'}
  end
end
