class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_message

    def index
        render json: Power.all, status: :ok
    end

    def show
        power = find_power
        render json: power
    end

    def update
        power = find_power
        power.update!(power_params)
        render json: power, status: :accepted
    end

    private
    def find_power
        Power.find_by!(id: params[:id])
    end
    
    def power_params
        params.permit(:name, :description)
    end 

    def record_not_found
        render json: {error:"Power not found"}, status: :not_found
    end

    def invalid_message invalid
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
