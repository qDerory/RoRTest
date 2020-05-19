module Api
    class Crew::UpdateAction < Crew::BaseAction
      def data
        Api::CrewSerializer.new(record)
      end
  end
end