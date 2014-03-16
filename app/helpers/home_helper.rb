module HomeHelper
  def link_to_session(options = {})
    if user_signed_in?
      anchor_text = 'Logout'
      path = destroy_user_session_path
      options[:method] = :delete
    else
      anchor_text = 'Login'
      path = new_user_session_path
    end

    link_to(anchor_text, path, options)
  end
end
