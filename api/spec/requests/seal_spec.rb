require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  before(:all) do
    @seal1 = Seal.create!({
                            name: 'seal_1',
                            hp: 1000,
                            attack: 40,
                            defense: 10,
                            img_url: 'seal_1.png',
                            description: 'Some description'
                          })
    @seal2 = Seal.create!({
                            name: 'seal_1',
                            hp: 1000,
                            attack: 40,
                            defense: 10,
                            img_url: 'seal_1.png',
                            description: 'Some description'
                          })
  end

  after(:all) do
    Seal.destroy_all
  end

  describe 'GET /seals' do
    it 'responds successfully, lists seals' do
      get '/seals'
      expect(response).to be_successful
      body = JSON.parse(response.body)
      puts(body.first)
      expect(body.length).to eq(2)
      expect(body.first['id']).to be_a(Integer)
      expect(body.first['name']).to be_a(String)
      expect(body.first['img_url']).to be_a(String)
      expect(body.first['attack']).to be nil
      expect(body.first['defense']).to be nil
      expect(body.first['description']).to be nil
    end
  end

  describe 'POST /turn' do
    it 'responds successfully, responds with the results of a turn' do
      post '/turn', params: { player: @seal1.id, opponent: @seal2.id, action: 'attack' }
      expect(response).to be_successful
      body = JSON.parse(response.body)
      expect(body['results']['player']['id'].to_i).to eq(@seal1.id)
      expect(body['results']['player']['action']).to be nil
      expect(body['results']['opponent']['id'].to_i).to eq(@seal2.id)
      expect(body['results']['opponent']['action'].length).not_to be nil
    end
  end
end
