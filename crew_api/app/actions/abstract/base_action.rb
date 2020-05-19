
module Abstract
  class BaseAction < Uncouple::Action
    include Actions::ErrorHandling

    def self.record_class
      raise NotImplementedError
    end

    def self.record_type
      self.record_class.name.underscore.to_sym
    end

    def self.policy_action
      raise NotImplementedError
    end

    def self.permit_keys
      raise NotImplementedError
    end

    def self.policy_class; end

    def permitted_params
      raise NotImplementedError
    end

    def policy_record; end

    def authorize!
      true
    end

    def authorize_without_record!
      true
    end

    def perform
      @success = save_record! if validate!
    end

    def validate!
      record.present?
    end

    def record
      raise NotImplementedError
    end

    def include_param
      return [] unless params[:include]

      Array(params[:include])[0].split(',').map { |e| e.to_sym }
    end

    def save_record!
      record.assign_attributes(permitted_params)
      return true if record.save

      fail_with_error(422, self.class.record_type, record.errors)
    end
  end
end
