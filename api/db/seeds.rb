Rails.logger.info("Seed the DB on environment: #{Rails.env}")
Rails.logger.info('___________________________')
if Rails.env.production? && ENV.fetch('ACCEPT_SEED', nil) != 'true'
  raise '---> You are in production environment! Won\'t modify DB, bye :) <---'
end

Seal.destroy_all

seals = [
  { name: 'seal_1', hp: 1000, attack: 40, defense: 10, img: 'seal_1.png', description: 'An amazing description for Seal No. 1' },
  { name: 'seal_2', hp: 1000, attack: 30, defense: 20, img: 'seal_2.png', description: 'An amazing description for Seal No. 2' },
  { name: 'seal_3', hp: 1000, attack: 20, defense: 30, img: 'seal_3.png', description: 'An amazing description for Seal No. 3' },
  { name: 'seal_4', hp: 1000, attack: 10, defense: 40, img: 'seal_4.png', description: 'An amazing description for Seal No. 4' }
]

Rails.logger.info('--- Creating seals:')

seals.each do |seal|
  Rails.logger.info("Creating seal: #{seal['name']}")
  Seal.create(seal)
end
