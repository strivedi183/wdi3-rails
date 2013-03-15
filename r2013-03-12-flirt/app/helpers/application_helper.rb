module ApplicationHelper
  def login_nav
    if @auth.present?
      link_to(@auth.username, '/login', :method => 'delete', :class => 'button tiny alert username')
    end
  end
end
