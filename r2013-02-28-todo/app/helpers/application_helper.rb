module ApplicationHelper
  def intellinav
    links = ""
    if @auth.present?
      links += "<li>#{link_to('Logout '+@auth.name, login_path, :method => :delete, :confirm => 'Are you sure you want to logout?')}</li>"
    else
      links = "<li>#{link_to('Login', login_path)}</li>"
    end
  end
end
