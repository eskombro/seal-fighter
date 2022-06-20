class Seal < ApplicationRecord
  validates :name, uniqueness: true

  def receive_attack(attack)
    { affects: 'hp', value: attack - defense }
  end
end
