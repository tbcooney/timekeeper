class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :authenticate_user!, :set_mailer_host

private
  def set_mailer_host
    email = current_user ? "#{current_user.email}." : ""
    ActionMailer::Base.default_url_options[:host] = "#{email}lvh.me:3000"
  end

  def after_invite_path_for(resource)
    root_url
  end
end
