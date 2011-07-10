class PagesController < ApplicationController

  def index
    # find homepage
    @hp = Page.where(:is_startpage => true).first
    # render homepage
  end

  def show
    puts params.inspect
    if params[:parents].nil?
      @page = Page.where(:is_startpage => true).first
    else
#      parents = params[:parents].split('/')
      @page = Page.find(params[:id])
    end
  end

end
