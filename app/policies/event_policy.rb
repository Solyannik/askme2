class EventPolicy < ApplicationPolicy
  def create?
    user.present?
  end

  def show?
    return true if record.pincode.blank?
    return true if user_is_creator?
    return true if record.pincode_valid?(pin)
  end

  def update?
    user_is_owner?(record)
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def user_is_owner?(event)
    user.present? && (event.try(:user) == user)
  end
end
