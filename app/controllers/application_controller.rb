class ApplicationController < ActionController::Base
#before_action :authenticate_admin!
before_action :authenticate_admin!, except: [:index]
before_action :authenticate_admin!, only: [:kanri]
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 def after_sign_in_path_for(resource)
    '/kanri'
  end   

end
