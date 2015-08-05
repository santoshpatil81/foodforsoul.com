class AboutController < ApplicationController

  def index
    @page_title = "About " + @site_name
  end

end
