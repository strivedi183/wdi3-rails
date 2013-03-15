require 'spec_helper'

describe 'Subscribers' do
  describe 'GET /' do
    it 'displays register link' do
      visit root_path
      page.should have_link('Register')
    end
  end

  describe 'GET /subscribers/new' do
    it 'displays the new user form', :js => true do
      visit root_path
      click_link('Register')
      page.should have_button('Cancel')
      page.should have_button('Create User')
    end
  end

  describe 'POST /subscribers' do
    it 'creats a new subscriber', :js => true do
      visit root_path
      click_link('Register')
      fill_in('Username', :with => 'Bob')
      fill_in('Email', :with => 'bob@gmail.com')
      fill_in('user_password', :with => 'a')
      fill_in('user_password_confirmation', :with => 'a')
      click_button('Create User')
      page.should_not have_button('Create User')
      page.should have_text('You have successfully created an account!')
      expect(Subscriber.first.user.username).to eq 'Bob'
    end
  end

  describe 'JS cancel_subscriber_form()' do
    it 'removes the subscriber form', :js => true do
      visit root_path
      click_link('Register')
      click_button('Cancel')
      page.should_not have_button('Create User')
    end
  end
end
