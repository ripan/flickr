require 'rails_helper'
require 'active_resource'

RSpec.describe "Photos", :type => :request do
  describe "GET /photos" do
    #search_params = {:method=>"flickr.photos.search", :api_key=>ENV["FLICKR_KEY"], :text=>"rails", :format=>"json", :nojsoncallback=>1, :extras => "description"}
    context 'there are no photos' do
      it "returns an empty array" do
        # ActiveResource::HttpMock.respond_to do |mock|
        #   mock.get '/photos.json', {'Accept' => 'application/json'}, []
        # end
        # Photo.all.should be_empty
      end
    end

    context 'there are 2 photos' do
      it "returns all photos" do
        # @photos = [{:id=>"23486505491", :title=>"WS20151205_3790", :description=>{:_content=>""}, :url=>"http://flickr.dev/photos/23486505491.json"}, {:id=>"23542874336", :title=>"WS20151205_3784", :description=>{:_content=>""}, :url=>"http://flickr.dev/photos/23542874336.json"}].to_json
        # ActiveResource::HttpMock.respond_to do |mock|
        #   mock.get '/photos', {'Accept' => 'application/json'}, @photos
        # end
        # Photo.all.size.should == 2
      end
    end
  end
end
