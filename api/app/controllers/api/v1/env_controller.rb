class Api::V1::EnvController < ApplicationController
  # index renders all items in the envs table
  def index
    envs = Env.all
    render json: envs, status: 200
  end

  # Create a new env
  # If the env saves correctly, we render the json data
  # If the env fails to save, we render an error
  def create
    env = Env.new(
      name: env.name,
      owner: env.owner,
      team: env.team
    )

    env.save ? render json: env, status: 200 : render json: { error: "Error creating env." }
  end

  def show
    env = Env.find_by(id: params[:id])
    env ? render json: env, status: 200 : render json: { error: "Env not found." }
  end
end
