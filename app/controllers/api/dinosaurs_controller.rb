class Api::DinosaursController < ApplicationController
  def index
    @dinosaur = Dinosaur.all
    render "index.json.jbuilder"
  end

  def create
    @dinosaur = Dinosaur.new(
                            weight: params[:weight],
                            height: params[:height],
                            sharptooth: params[:sharptooth],
                            )
    if @dinosaur.save 
      render "show.json.jbuilder"
    else
      render json: { errors: @dinosaur.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @dinosaur = Dinosaur.find(params[:id])

    @dinosaur.weight = params[:weight] || @dinosaur.weight
    @dinosaur.height = params[:height] || @dinosaur.height
    @dinosaur.sharptooth = params[:sharptooth] || @dinosaur.sharptooth

    if @dinosaur.save
      render "show.json.jbuilder"
    else
      render json: { errors: @dinosaur.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    render json: {message: "Extinct!"}
  end
end
