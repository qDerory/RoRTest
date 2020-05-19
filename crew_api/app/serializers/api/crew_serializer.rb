
module Api
    class CrewSerializer < CrewApiSerializer
      set_type :crews

      attributes :id, :first_name,
                 :last_name, :email, :phone_number, :user_name


    end
end
