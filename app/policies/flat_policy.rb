class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    puts "__________________"
    puts record.user
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
