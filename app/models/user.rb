class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :validatable, :confirmable

  validates :name, presence: true
  validates :initials, presence: true

  before_validation :initialise_initials

private

  def initialise_initials
    if self.initials.blank? && name.present?
      self.initials = name.split.map(&:first).join
    end
  end
end
