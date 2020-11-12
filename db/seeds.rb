# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create( [
  { username: 'burgermeister' },
  { username: 'tacoman' },
  { username: 'muffinman' },
  { username: 'chefpizza' }
])

user.first.created_events.create( [
  { title: "Burger's Galore", location: 'At the Burger Bay', date: '2020-11-20 17:00:00', description: 'Dip into a simmering, hot, and delicious time with fresh burgers at the Burger Bay. This will be the event of a lifetime, with the debut of our newest addition, the Holy Hot Tamale Burger. Entrance is $10. No outside drinks or food allowed.'}
])

user[2].created_events.create([
  { title: "Taco Tuesday", location: 'At the Taco Joint', date: '2020-11-10 15:00:00', description: "Bring your friends and family to Tacoman's Taco Tuesday event! There will be tacos, guac, and as much tortilla as you can fit in your bellies."}
])

user[3].created_events.create([
  { title: "Cupcake Canoodling Party", location: 'At the Muffin Mansion', date: '2020-11-14 16:00:00', description: "Spend your Saturday afternoon at the Muffin Mansion and eat your heart's content of all the cupcakes we offer. Admission is $10 and you get a cupcake of your choice free with your entrance ticket."}
])

user[4].created_events.create([
  { title: "Pizzeria Palooza IV", location: 'At the Pizzeria', date: '2022-11-27 17:00:00', description: "Come by the Pizzeria and compete in the fourth year of Pizzeria Palooza. Bystanders, fanclubs, and pizza enthusiasts are also welcome to watch this mouth-watering and blood-pumping feud of saucy dough and fresh toppings. The winning pizza shall be added to our menu for the whole year, until the next Pizzeria Palooza. Who will make the best pizza this year? It's up to you to decide!"}
])