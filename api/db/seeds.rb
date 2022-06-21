Rails.logger.info("Seed the DB on environment: #{Rails.env}")
Rails.logger.info('___________________________')
if Rails.env.production? && ENV.fetch('ACCEPT_SEED', nil) != 'true'
  raise '---> You are in production environment! Won\'t modify DB, bye :) <---'
end

Seal.destroy_all

seals = [
  { name: 'uncle_kevin', hp: 1000, attack: 40, defense: 10, img_url: 'uncle_kevin.jpg',
    description: 'I love cheese, especially rubber cheese cow. Cream cheese port-salut cheddar'\
                 ' lancashire cheeseburger smelly cheese feta cheese strings. Babybel babybel cauliflower'\
                 ' cheese croque monsieur chalk and cheese brie port-salut smelly cheese. '\
                 ' Cottage cheese goat fromage frais rubber cheese manchego.' },
  { name: 'george', hp: 1000, attack: 30, defense: 20, img_url: 'george.jpg',
    description: 'I love cheese, especially manchego cheese on toast. Cottage cheese the big cheese pecorino'\
                 ' when the cheese comes out everybody\'s happy when the cheese comes out everybody\'s happy'\
                 ' cheeseburger paneer dolcelatte. Cheese triangles roquefort melted cheese airedale cheese'\
                 ' and wine cheese strings roquefort fromage frais. Mascarpone cream cheese cheese and wine'\
                 ' paneer babybel cheese strings.' },
  { name: 'ninja_bill', hp: 1000, attack: 20, defense: 30, img_url: 'ninja_bill.jpg',
    description: 'I love cheese, especially cheese triangles melted cheese. Mozzarella fromage red leicester'\
                 ' say cheese goat cut the cheese cheese triangles feta. The big cheese paneer cheese'\
                 ' and wine cheese triangles fromage frais the big cheese cheese triangles monterey jack. '\
                 'Goat taleggio cow red leicester fondue.' },
  { name: 'the_king', hp: 1000, attack: 10, defense: 40, img_url: 'the_king.jpg',
    description: 'I love cheese, especially fromage frais when the cheese comes out everybody\'s happy. '\
                 'Fromage frais swiss cheese and wine monterey jack goat cheesy feet bocconcini '\
                 'danish fontina. Rubber cheese edam airedale paneer cottage cheese blue castello'\
                 ' macaroni cheese pecorino. Monterey jack cream cheese chalk and cheese feta '\
                 'fromage frais swiss lancashire.' },
  { name: 'thug_ryan', hp: 1000, attack: 15, defense: 30, img_url: 'thug_ryan.jpg',
    description: 'I love cheese, especially gouda blue castello. Jarlsberg manchego red leicester cheesy '\
                 'feet cheeseburger melted cheese mascarpone cheeseburger. Cut the cheese cheesy '\
                 'feet hard cheese chalk and cheese gouda cheese slices cheddar st. agur blue cheese. '\
                 'Hard cheese rubber cheese brie smelly cheese.' },
  { name: 'lil_joe', hp: 1000, attack: 25, defense: 25, img_url: 'lil_joe.jpg',
    description: 'I love cheese, especially cottage cheese emmental. Pepper jack smelly cheese bavarian '\
                 'bergkase bocconcini ricotta blue castello everyone loves stinking bishop. Babybel babybel gouda '\
                 'everyone loves melted cheese swiss jarlsberg bavarian bergkase. Queso feta macaroni cheese '\
                 'babybel cheese on toast port-salut roquefort cheese strings. Melted cheese.' }
]

Rails.logger.info('--- Creating seals:')

seals.each do |seal|
  Rails.logger.info("Creating seal: #{seal['name']}")
  Seal.create(seal)
end
