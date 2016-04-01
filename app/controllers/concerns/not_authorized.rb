module NotAuthorized

  def user_not_authorized
    if !user_signed_in?
      flash[:notice] = t'devise.failure.unauthenticated'
      redirect_to '/'
    end
  end
end
