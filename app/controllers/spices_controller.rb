class SpicesController < ApplicationController

    def /
        spices=Spice.all
        render json: spices
    end
    # GET /spices
    def index
        spices=Spice.all
        render json: spices
    end

    # POST /spice
  def create
    spice = Spice.create(spice_params)
    render json: spice, status: :created
  end

  # PATCH /spice
  def update
    spice=Spice.find_by(id: params[:id])
    if spice
        spice.update(spice_params)
      render json: spice
    end

    # DELETE /spice/:id
  def destroy
    spice=Spice.find_by(id: params[:id])
    if spice
        spice.destroy
      head :no_content
    end
  end

  end



  private

  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end
end
