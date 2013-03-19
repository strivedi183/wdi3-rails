require 'spec_helper'

describe 'Albums' do
  describe 'GET /' do
    it 'displays the New Album button' do
      visit root_path
      page.should have_link('New Album')
    end
  end

  describe 'GET /albums/new' do
    it 'displays the Album Form', :js => true do
      visit root_path
      click_link('New Album')
      page.should have_button('Create Album')
      page.should have_link('Cancel')
    end
    it 'cancels the Album Form', :js => true do
      visit root_path
      click_link('New Album')
      click_link('Cancel')
      page.should_not have_button('Create Album')
    end
  end

  describe 'POST /albums' do
    it 'create an Album', :js => true do
      visit root_path

      click_link('New Album')
      fill_in('Name', :with => 'Dogs')
      click_button('Create Album')

      click_link('New Album')
      fill_in('Name', :with => 'Cats')
      click_button('Create Album')

      click_link('New Album')
      fill_in('Name', :with => 'Horses')
      click_button('Create Album')

      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'Cats')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'Dogs')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'Horses')

    end
  end

  describe 'GET /albums/3' do
    it 'displays the album show page', :js => true do
      visit root_path
      click_link('New Album')
      fill_in('Name', :with => 'Dogs')
      click_button('Create Album')
      click_link('Dogs')
      current_path.should eq '/albums/1'
    end
  end

end