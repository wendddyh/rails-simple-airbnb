class FlatsController < ApplicationController
  before_action :flat_params, only: %i[show new create]

  def index
    @flats = Flat.all
  end

  def show

  end

  def new
    @flats = Flat.new
  end

  def create
    @flats = Flat.new(flat_params)
    if @flats.save
      redirect_to @flats, notice: 'Created successfully!'
    else
      render :new
    end
  end


  private

  def flat_params
    @flats = Flat.find(params[:id])
  end
end
