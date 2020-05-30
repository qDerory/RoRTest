module ActionPerformer
  def self.included(base)
    base.send(:include, Uncouple::ActionPerformer)
  end


  def render_action_error(action)
    render json: { errors: action.error_response }, status: action.error_code
  end
end
