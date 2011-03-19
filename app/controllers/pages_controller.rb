class PagesController < ApplicationController

  def index
    # find homepage
    @hp = Page.where(:is_startpage => true)
    # render homepage
  end

  def show
    puts params.inspect
    @page = Page.find(params[:id])
  end

end
