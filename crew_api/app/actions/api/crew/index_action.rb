
module Api
    class Crew::IndexAction < Crew::BaseAction

      def perform
        @success = !scope.nil?
      end

      def data
        Api::CrewSerializer.new(scope)
      end

  end
end