class ItemPolicy < ApplicationPolicy

  def index?
    return true
  end

  def new?
    return true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end