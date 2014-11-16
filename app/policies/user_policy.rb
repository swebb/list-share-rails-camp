class UserPolicy < ApplicationPolicy
  def edit?
    user == record
  end

  alias :update? :edit?

  def permitted_attributes
    [:name, :initials, :email, :password, :password_confirmation]
  end
end
