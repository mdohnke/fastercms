class Admin::PagesController < Admin::AdminController

  def index
    @pages = Page.all
    @hp = Page.where(:is_startpage => true).first
  end

  def new
    @page = Page.new
  end

  def create
    p = Page.new params[:page]
    p.save!
#    Page.create! params[:page]
    redirect_to admin_pages_path
  end

  def edit
    @page = Page.find(params[:id])
  end

  end
