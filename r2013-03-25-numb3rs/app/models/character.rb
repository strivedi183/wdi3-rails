# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  hex        :string(255)
#  symbol     :string(255)
#  code_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Character < ActiveRecord::Base
  attr_accessible :hex, :sym
  belongs_to :code
end
