class SearchController < ApplicationController
  # GET /cars
  # GET /cars.json
  def index
    @cars = Search.search params[:q], :star        => true, 
    								  :match_mode  => :all,
    								  :retry_stale => true, 
    								  :populate    => true,  
    								  :page 	   => params[:page], 
    								  :per_page    => 20
    @count_result = Search.search_count params[:q]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cars }
    end
  end
end
