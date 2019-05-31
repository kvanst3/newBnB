class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.where(user: user) # Only the ones that belong to user!
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def mytrips?
    true
  end

  def myflats?
    true
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    user.admin || record.user == user
  end
end
