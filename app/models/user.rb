class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  has_many :user_events
  has_many :events, :through => :user_events

  has_secure_password
end
