class Admin::AdminController < ApplicationController
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to admin_root_url
  end

  layout "admin"
  before_filter :require_user

end
