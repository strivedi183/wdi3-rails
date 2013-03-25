require 'spec_helper'

describe 'Photos' do
  describe 'GET /photos/new' do
    it 'displays a new button for photos', :js => true do
      album = FactoryGirl.create(:album)
      visit album_path(album)
      current_path.should eq '/albums/1'
      page.should have_link('New Photo')
    end

    it 'cancels the New Photo Form', :js => true do
      album = FactoryGirl.create(:album)
      visit album_path(album)
      click_link('New Photo')
      click_link('Cancel')
      page.should_not have_button('Create Photo')
    end
  end
end