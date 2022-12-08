class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Hero.all 
    end

    def show 

    end

    private 
    def render_not_found 
        render json: { error: "Hero not found" }, status: :not_found
    end
end
