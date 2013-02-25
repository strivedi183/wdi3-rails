# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  isbn        :string(255)
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :integer
#

class Book < ActiveRecord::Base
  attr_accessible :title, :description, :isbn, :image
  belongs_to :author
end
