class TurnsController < ApplicationController
  # POST /seals
  def action
    opponent_action = Seal.find(turn_params[:opponent]).receive_attack(Seal.find(turn_params[:player]).attack)
    render json: { results: { player: { id: turn_params['player'], action: nil },
                              opponent: { id: turn_params['opponent'], action: opponent_action } } }
  end

  private

  # Only allow a list of trusted parameters through.
  def turn_params
    params.require([:player, :opponent, :action])
    params.permit([:player, :opponent, :action])
  end
end
