class TurnsController < ApplicationController
  before_action :set_turn

  # POST /seals
  def action
    dammage_seal2 = Seal.find(@turn[:seal1]).attack - Seal.find(@turn[:seal2]).defense
    render json: { results: {seal1: { id: turn_params['seal1'], action: nil }, seal2: { id: turn_params['seal1'], action: 'hp', value: dammage_seal2 }}}
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_turn
    @turn = turn_params
  end

  # Only allow a list of trusted parameters through.
  def turn_params
    params.require([:seal1, :seal2])
    params.permit([:seal1, :seal2])
  end
end
