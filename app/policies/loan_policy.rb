class LoanPolicy < ApplicationPolicy

    def index?
    return true
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def show?
    return true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end