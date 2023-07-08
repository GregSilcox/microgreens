module Microgreens
  class ProductPolicy < ApplicationPolicy
    def index?
      true
    end
  end
end