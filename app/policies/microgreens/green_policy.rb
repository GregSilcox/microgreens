module Microgreens
  class GreenPolicy < ApplicationPolicy
    def index?
      true
    end

    def show?
      true
    end
  end
end