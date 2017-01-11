class ApplicationController < ActionController::Base
  include AuthenticationManagement
  protect_from_forgery with: :exception
end
