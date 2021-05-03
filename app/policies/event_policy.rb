class EventPolicy < ApplicationPolicy
  def create?
    context.user.present?
  end

  def show?
    return true if record.pincode.blank?
    return true if user_is_creator?
    return true if record.pincode_valid?(context.pin)
    false
  end

  def update?
    user_is_creator?
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

  def user_is_creator?
    context.user.present? && (record.user == context.user)
  end
end
