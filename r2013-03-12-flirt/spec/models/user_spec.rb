# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  userable_id     :integer
#  userable_type   :string(255)
#

require 'spec_helper'

describe User do
  describe '.new' do
    it 'creates an intance of User' do
      user = User.new
      expect(user).to be_an_instance_of(User)
    end
    it 'has username, email, password and password_confirmation' do
      user = User.new(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.username).to eq 'bob'
      expect(user.email).to eq 'bob@gmail.com'
      expect(user.password).to eq 'a'
      expect(user.password_confirmation).to eq 'a'
    end
  end

  describe '.create' do
    it 'has an id' do
      user = User.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.id).to_not be nil
    end

    it 'fails validation if username or email is blank while supplying password' do
      user = User.create(:password => 'a', :password_confirmation => 'a')
      expect(user.id).to be nil
    end
  end

  describe '#subscriber' do
    it 'returns a Subscriber object' do
      user = User.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      subscriber = Subscriber.create(tagline: 'please change tagline', bio: 'please change bio', gender: 'please change gender', age: 99)
      subscriber.user = user
      expect(user.subscriber).to be_an_instance_of(Subscriber)
    end
    it 'returns nil when the user is not a subscriber' do
      user = User.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      admin = Administrator.create(role: 'db')
      admin.user = user
      expect(user.subscriber).to be nil
    end
  end

  describe '#admin' do
    it 'returns a Admin object' do
      user = User.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      admin = Administrator.create(role: 'db')
      admin.user = user
      expect(user.admin).to be_an_instance_of(Administrator)
    end
    it 'returns nil when the user is not a admin' do
      user = User.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      subscriber = Subscriber.create(tagline: 'please change tagline', bio: 'please change bio', gender: 'please change gender', age: 99)
      subscriber.user = user
      expect(user.admin).to be nil
    end
  end

end
