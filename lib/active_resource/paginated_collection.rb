require 'active_resource'

class PaginatedCollection < ActiveResource::Collection
  attr_accessor :page, :photos, :photo, :total_pages, :current_page, :limit_value, :total, :perpage, :pages
  def initialize(parsed = {})
    @elements = parsed['photos']['photo']
    @page = parsed['photos']['page']
    @pages = parsed['photos']['pages']
    @total_pages = parsed['photos']['pages']
    @perpage = parsed['photos']['perpage']
    @total = parsed['photos']['total']
    @current_page = parsed['photos']['page']
    @limit_value = parsed['photos']['perpage']
  end
end