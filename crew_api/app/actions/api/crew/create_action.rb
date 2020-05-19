module Api
    class Crew::CreateAction < Crew::BaseAction
      def data
        Api::CrewSerializer.new(record)
      end

      def record
        @record ||= self.class.record_class.new(permitted_params)
      end
    end
end