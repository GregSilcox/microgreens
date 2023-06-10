module Microgreens
  class OrderPolicy > ApplicationPolicy
    class Scope
      def resolve
        user.admin? ? scope.all : scope.where( user_id: user.id )
      end
    end
  end
end