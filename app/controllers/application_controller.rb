class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  helper_method :current_user

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes
  def current_user
    User.find_by(id: session[:user_id])
  end
  def require_login
    unless current_user
      redirect_to "/login"
    end
  end
  private
  def record_not_found
   redirect_to "/books",
    alert: "Book not found or you don't have permission to access it."
  end
end
