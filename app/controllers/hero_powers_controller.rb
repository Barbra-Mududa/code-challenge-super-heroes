class HeroPowersController < ApplicationController
    # skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordInvalid, with: :render_errors

    def index 
        render json: HeroPower.all 
    end
    
    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power.hero, serializer: HeroPowerSerializer
    end

    private
    
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
    def render_errors(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
