module Api
    class Crew::BaseAction < Abstract::BaseAction

      def self.record_class
        ::Crew
      end


      def record
        @record ||= scope.find(params[:id])
      end

      def scope
        @scope ||= self.class.record_class.all
      end

      def permitted_params
        params.require(:crew).permit(:first_name, :last_name, :email, :user_name, :phone_number)
      end
    end
end