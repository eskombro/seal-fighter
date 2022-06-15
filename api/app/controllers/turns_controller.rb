class TurnsController < ApplicationController
  before_action :set_turn

  # POST /seals
  def action
    dammage_opponent = Seal.find(@turn[:player]).attack - Seal.find(@turn[:opponent]).defense
    render json: { results: { player: { id: turn_params['player'], action: nil },
                              opponent: { id: turn_params['opponent'], action: 'hp', value: dammage_opponent } } }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_turn
    @turn = turn_params
  end

  # Only allow a list of trusted parameters through.
  def turn_params
    params.require([:player, :opponent, :action])
    params.permit([:player, :opponent, :action])
  end
end
