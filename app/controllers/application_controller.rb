class ApplicationController < ActionController::Base
  # Allow external REST scripts to call endpoints without a CSRF token.
  protect_from_forgery with: :null_session
end
