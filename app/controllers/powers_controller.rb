class PowersController < ApplicationController
  def index
    powers = Power.all
    render json: powers
  end

  def show
    power = Power.find(params[:id])
    render json: power
  end

  def create
    power = Power.new(power_params)
    if power.save
      render json: power, status: :created
    else
      render json: power.errors, status: :unprocessable_entity
    end
  end

  def update
    power = Power.find(params[:id])
    if power.update(power_params)
      render json: power
    else
      render json: power.errors, status: :unprocessable_entity
    end
  end

  def destroy
    power = Power.find(params[:id])
    power.destroy
    head :no_content
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
