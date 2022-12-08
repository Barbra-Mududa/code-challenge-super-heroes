class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        render json: Hero.all 
    end

    def show 
        hero = find_hero
        render json: hero, status: :ok 
    end

    private 
    def find_hero
        Hero.find(params[:id])
    end

    def render_not_found 
        render json: { error: "Hero not found" }, status: :not_found
    end
end
