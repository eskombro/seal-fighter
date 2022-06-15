Rails.logger.info("Seed the DB on environment: #{Rails.env}")
Rails.logger.info('___________________________')
if Rails.env.production? && ENV.fetch('ACCEPT_SEED', nil) != 'true'
  raise '---> You are in production environment! Won\'t modify DB, bye :) <---'
end

seals = [
  { name: 'seal_1', hp: 1000, attack: 40, defense: 10 },
  { name: 'seal_2', hp: 1000, attack: 30, defense: 20 },
  { name: 'seal_3', hp: 1000, attack: 20, defense: 30 },
  { name: 'seal_4', hp: 1000, attack: 10, defense: 40 }
]

Rails.logger.info('--- Creating seals:')

seals.each do |seal|
  Rails.logger.info("Creating seal: #{seal['name']}")
  Seal.create(seal)
end