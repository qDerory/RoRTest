module Api
    class Crew::DestroyAction < Crew::BaseAction
      def perform
        @success = record.destroy!
      end
  end
end