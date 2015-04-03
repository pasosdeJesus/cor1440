# encoding: UTF-8
require 'sip/application_controller'
class ApplicationController < Sip::ApplicationController
  protect_from_forgery with: :exception
end

