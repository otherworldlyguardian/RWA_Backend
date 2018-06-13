# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = ActiveSupport::JSON.decode(File.read('db/seeds/users.json'))
client = ActiveSupport::JSON.decode(File.read('db/seeds/clients.json'))
field = ActiveSupport::JSON.decode(File.read('db/seeds/fields.json'))
form = ActiveSupport::JSON.decode(File.read('db/seeds/forms.json'))

user.each do |u|
  User.create!(u)
end

client.each do |c|
  Client.create!(c)
end

field.each do |f|
  Field.create!(f)
end

form.each do |f|
  seed = Form.new(f)
  ts = DateTime.now().strftime('%a, %d %b %Y %H:%M:%S')
  seed.date_time = ts
  seed.start = ts
  seed.end = ts
  if !seed.sand
    seed.sand = seed.field.sand
  end
  if !seed.description
    seed.description = seed.field.description
  end
  seed.save
end
