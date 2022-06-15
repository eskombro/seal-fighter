class Seal < ApplicationRecord
  def receive_attack(attack)
    { affects: 'hp', value: attack - defense }
  end
end
