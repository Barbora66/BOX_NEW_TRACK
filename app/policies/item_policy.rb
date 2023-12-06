class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    record.box.user == user
  end

  def create?
    record.box.user == user
  end

  def show?
    record.box.user == user
  end

  def update?
    record.box.user == user
  end

  def edit?
    record.box.user == user
  end

  def destroy?
    update?
  end

 
end
