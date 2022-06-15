require 'rails_helper'

RSpec.describe Seal, type: :model do
  before(:all) do
    @seal = described_class.create({
                                     name: 'seal_1',
                                     hp: 1000,
                                     attack: 40,
                                     defense: 10
                                   })
    @seal.save!
  end

  after(:all) do
    described_class.destroy_all
  end

  it 'has a valid name' do
    expect(@seal.name).not_to be nil
  end
end
