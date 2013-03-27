# == Schema Information
#
# Table name: codes
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Code do
  before(:each) do
    Code.create()
  end

  describe '.create' do
    it 'creates a code object' do
      url = 'http://wwww.ascii-code.com'
      code = Code.first
      expect(code).to_not be nil
    end
  end

  describe '#hex' do
    it 'gets the hex character' do
      code = Code.where(:hex => '41').first
      expect(code.hex).to be '41'
      expect(code.symbol).to be 'A'
    end
  end

  describe '#symbol' do
    it '' do
      code = Code.where(:symbol => 'A').first
      expect(code.hex).to be '41'
      expect(code.symbol).to be 'A'
    end
  end
end
