class ApplicationController < Msip::ApplicationController
  protect_from_forgery with: :exception

  # Sin definición de autorización por ser utilidad
end

