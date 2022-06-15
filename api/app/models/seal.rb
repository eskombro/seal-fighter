class Seal < ApplicationRecord
  def receive_attack(attack)
    { affacts: 'hp', value: attack - defense }
  end
end
