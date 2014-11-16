class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :validatable, :confirmable

  validates :name, presence: true
  validates :initials, presence: true

  before_save :initialise_initials

private

  def initialise_initials
    if initials.blank? && name.present?
      initials = name.split.map(&:first).join
    end
  end
end
