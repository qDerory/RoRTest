module Api
  module V1
    class Crew::ShowAction < Crew::BaseAction
      def perform
        @success = !record.nil?
      end

      def data
        Api::CrewSerializer.new(record)
      end
    end
  end
end