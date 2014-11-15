class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :confirmable

  validates :name, presence: true
end
