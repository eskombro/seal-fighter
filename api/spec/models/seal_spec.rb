require 'rails_helper'

RSpec.describe Seal, type: :model do
  before(:all) do
    @seal = described_class.create({
                                     name: 'seal_1',
                                     hp: 1000,
                                     attack: 40,
                                     defense: 10,
                                     img_url: 'seal_1.png',
                                     description: 'Some description'
                                   })
    @seal.save!
  end

  after(:all) do
    described_class.destroy_all
  end

  it 'has a valid name' do
    expect(@seal.name).not_to be nil
    expect(@seal.name).to be_a(String)
  end

  it 'has valid hp, attack and defense attributes' do
    expect(@seal.hp).not_to be 0
    expect(@seal.hp).to be_a(Integer)
    expect(@seal.attack).not_to be 0
    expect(@seal.attack).to be_a(Integer)
    expect(@seal.defense).not_to be 0
    expect(@seal.defense).to be_a(Integer)
  end

  it 'fails to create a Seal with missing attributes' do
    expect do
      Seal.create!(name: 'Missing_attributes')
    end.to raise_error(an_instance_of(ActiveRecord::NotNullViolation))
  end
end
