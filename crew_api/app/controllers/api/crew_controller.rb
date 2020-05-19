
module Api
    class CrewController < ApplicationController
      def index
        perform Api::Crew::IndexAction do
          return render json: @action.data
        end
        render_action_error @action
      end

      def show
        perform Api::Crew::ShowAction do
          return render json: @action.data
        end
        render_action_error @action
      end

      def create
        perform Api::Crew::CreateAction do
          return render json: @action.data
        end
        render_action_error @action
      end

      def update
        perform Api::Crew::UpdateAction do
          return render json: @action.data
        end
        render_action_error @action
      end

      def destroy
        perform Api::Crew::DestroyAction do
          return head :no_content
        end
        render_action_error @action
      end
    end
end
