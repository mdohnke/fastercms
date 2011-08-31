class Admin::PagesController < Admin::AdminController

  def index
    @pages = Page.all
    @hp = Page.where(:is_startpage => true).first
  end

  def new
    @page = Page.new
  end

  def create
#    begin
      Page.create! params[:page]
#    rescue
      # handle error
#    end
    redirect_to admin_pages_path
  end

end
