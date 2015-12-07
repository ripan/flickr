class HomeController < ApplicationController
	before_action :set_search_params, only: :index
	def index
		@photos = Photo.all(:params => @search_params)
	end
	private
	def set_search_params
		@search_params = {:method=>"flickr.photos.getRecent", :api_key=>ENV["FLICKR_KEY"], :format=>"json", :nojsoncallback=>1, :extras => "description", :page => params[:page]}
	end
end
