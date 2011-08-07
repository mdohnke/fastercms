class PagesController < ApplicationController
  include PagesHelper

  def index
    # find homepage
    @hp = Page.where(:is_startpage => true).first
    if @hp.nil?
      redirect_to '/admin#index'
    end
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
    render_404 if @page.nil?
  end

end
