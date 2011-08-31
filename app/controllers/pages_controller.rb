class PagesController < ApplicationController
  include PagesHelper

  def index
    # find homepage
    @hp = Page.where(:is_startpage => true).first
    if @hp.nil?
      redirect_to admin_root_url
    end
    redirect_to "/#{@hp.name}"
    # render homepage
  end

  def show
    if params[:parents].nil?
      @page = Page.where(:is_startpage => true).first
    else
      # parents = params[:parents].split('/')
      @page = Page.find(params[:id])
    end
    render_404 if @page.nil?
    params[:title] = @page.title
  end

end
