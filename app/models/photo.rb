require 'active_resource/paginated_collection' # custom parser

class Photo < ActiveResource::Base
  #self.site = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=3c6cc2c1faccf356e228effb4facc9c2&text=rails&format=json&nojsoncallback=1"
  #self.prefix = "services/rest/"
  #self.collection_name = "photos"
  self.site = "https://api.flickr.com/services/rest/"
  self.format = :json
  self.element_name = ""
  self.include_format_in_path = false
  self.include_root_in_json = false
  self.collection_parser = PaginatedCollection

  def url(size=nil)
    if(size)
      "https://farm#{self.farm}.staticflickr.com/#{self.server}/#{self.id}_#{self.secret}_#{size}.jpg"
    else
      "https://farm#{self.farm}.staticflickr.com/#{self.server}/#{self.id}_#{self.secret}.jpg"
    end
  end

  def desc
    description._content
  end
end
