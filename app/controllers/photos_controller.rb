class PhotosController < ApplicationController
  before_action :set_search_params, only: :index

  # GET /photos
  # GET /photos.json
  def index
    @photos = @search_params[:text].blank? ? [] : Photo.all(:params => @search_params)
  end

  private
  def set_search_params
    @search_params = {:method=>"flickr.photos.search", :api_key=>ENV["FLICKR_KEY"], :text=>params[:keyword], :format=>"json", :nojsoncallback=>1, :extras => "description", :page => params[:page]}
  end
end
