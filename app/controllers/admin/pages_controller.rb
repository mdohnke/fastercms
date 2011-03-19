class Admin::PagesController < ApplicationController

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    Page.create! params[:page]
    redirect_to admin_pages_path
  end

end
