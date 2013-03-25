# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ActiveRecord::Base
  attr_accessible :title, :url
end
