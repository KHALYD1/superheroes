class HeroPowerController < ApplicationController
    def create
      hero = Hero.find_by(id: params[:hero_id])
      power = Power.find_by(id: params[:power_id])
      if hero && power
        hero_power = hero.hero_powers.new(power: power, strength: params[:strength])
        if hero_power.save
          render json: hero, serializer: HeroWithPowersSerializer
        else
          render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { error: 'Hero or Power not found' }, status: :not_found
      end
    end
  end
  