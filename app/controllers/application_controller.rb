class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_actionでdeviseのストロングパラメーターにnameカラムを追加するメソッドを実行します。
  before_action :configure_permitted_parameters, if: :devise_controller?
  

  PERMISSIBLE_ATTRIBUTES = %i(name avatar avatar_cache backimg profile)

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up).push(PERMISSIBLE_ATTRIBUTES)
      devise_parameter_sanitizer.for(:sign_in).push(PERMISSIBLE_ATTRIBUTES)
      devise_parameter_sanitizer.for(:account_update).push(PERMISSIBLE_ATTRIBUTES)
    end

end
