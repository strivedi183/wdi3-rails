# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Photo do
  let(:photo) {Photo.create(name: 'NYC', url: 'nyc.jpg')}

  describe '.create' do
    it 'creates' do
      photo.should be_an_instance_of(Photo)
      photo.name.should eq 'NYC'
      photo.url.should eq 'nyc.jpg'
    end
  end

  describe '#album' do
    it 'has an album' do
      album = FactoryGirl.create(:album)
      album.photos << photo
      photo.album.should eq album
    end
  end
end
