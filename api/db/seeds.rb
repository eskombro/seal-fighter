Rails.logger.info("Seed the DB on environment: #{Rails.env}")
Rails.logger.info('___________________________')
if Rails.env.production? && ENV.fetch('ACCEPT_SEED', nil) != 'true'
  raise '---> You are in production environment! Won\'t modify DB, bye :) <---'
end

Seal.destroy_all

seals = [
  { name: 'seal_1', hp: 1000, attack: 40, defense: 10, img_url: 'seal_1.png',
    description: 'I love cheese, especially rubber cheese cow. Cream cheese port-salut cheddar lancashire cheeseburger smelly cheese feta cheese strings. Babybel babybel cauliflower cheese croque monsieur chalk and cheese brie port-salut smelly cheese. Cottage cheese goat fromage frais rubber cheese manchego.' },
  { name: 'seal_2', hp: 1000, attack: 30, defense: 20, img_url: 'seal_2.png',
    description: 'I love cheese, especially manchego cheese on toast. Cottage cheese the big cheese pecorino when the cheese comes out everybody\'s happy when the cheese comes out everybody\'s happy cheeseburger paneer dolcelatte. Cheese triangles roquefort melted cheese airedale cheese and wine cheese strings roquefort fromage frais. Mascarpone cream cheese cheese and wine paneer babybel cheese strings.' },
  { name: 'seal_3', hp: 1000, attack: 20, defense: 30, img_url: 'seal_3.png',
    description: 'I love cheese, especially cheese triangles melted cheese. Mozzarella fromage red leicester say cheese goat cut the cheese cheese triangles feta. The big cheese paneer cheese and wine cheese triangles fromage frais the big cheese cheese triangles monterey jack. Goat taleggio cow red leicester fondue.' },
  { name: 'seal_4', hp: 1000, attack: 10, defense: 40, img_url: 'seal_4.png',
    description: 'I love cheese, especially fromage frais when the cheese comes out everybody\'s happy. Fromage frais swiss cheese and wine monterey jack goat cheesy feet bocconcini danish fontina. Rubber cheese edam airedale paneer cottage cheese blue castello macaroni cheese pecorino. Monterey jack cream cheese chalk and cheese feta fromage frais swiss lancashire.' }
]

Rails.logger.info('--- Creating seals:')

seals.each do |seal|
  Rails.logger.info("Creating seal: #{seal['name']}")
  Seal.create(seal)
end
