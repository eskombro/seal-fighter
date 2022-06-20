class SealsController < ApplicationController
  before_action :set_seal, only: [:update, :destroy]

  # GET /seals
  def index
    @seals = Seal.all
    render json: JSON.parse(Rabl.render(@seals, 'seals/index', view_path: 'app/views', format: :json))
  end

  # GET /seals/1
  def show
    @seal = Seal.find_by(name: params[:name_of_the_seal])
    render json: JSON.parse(Rabl.render(@seal, 'seals/show', view_path: 'app/views', format: :json))
  end

  # POST /seals
  def create
    @seal = Seal.new(seal_params)

    if @seal.save
      render json: @seal, status: :created, location: @seal
    else
      render json: @seal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seals/1
  def update
    if @seal.update(seal_params)
      render json: @seal
    else
      render json: @seal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seals/1
  def destroy
    @seal.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_seal
    @seal = Seal.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def seal_params
    params.require(:seal).permit(:name, :hp, :attack)
  end
end
