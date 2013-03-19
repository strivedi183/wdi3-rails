# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Album do
  let(:album) {Album.create(name: 'NYC')}

  describe '.create' do
    it 'creates' do
      album.should be_an_instance_of(Album)
      album.name.should eq 'NYC'
    end
  end

  describe '#photo' do
    it 'has photos' do
      photo = FactoryGirl.create(:photo)
      album.photos << photo
      album.photos.first.should eq photo
    end
  end
end
