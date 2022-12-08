class PowersController < ApplicationController
    before :set_power, only: %i[ show update ]

    def index
        @powers = Power.all
    
        render json: @powers
    end

    def show
        render json: @power
    end

    private
    def set_power
        @power = Power.find(params[:id])
    end
end
