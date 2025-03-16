class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end
  end

  # Pundit expects an initialize method if we override the parent
  def initialize(user, car)
    @user = user
    @car = car
  end

  def index?
    true
  end

  def show?
    @car.user_id == @user.id || @user.admin?
  end

  def create?
    @user.present?
  end

  def update?
    @user.admin? || (@car.user_id == @user.id)
  end

  def destroy?
    @user.admin? || (@car.user_id == @user.id)
  end
end
