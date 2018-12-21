# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
Owner.destroy_all
appointments = [
  {start_date: "2019, 01, 01", end_date: "2019, 07, 18", pet_id: "1",  sitter_id: "10"},
  {start_date: "2019, 02, 05", end_date: "2019, 02, 05", pet_id: "2",  sitter_id: "9"},
  {start_date: "2019, 04, 06", end_date: "2019, 04, 17", pet_id: "3",  sitter_id: "8"},
  {start_date: "2019, 05, 05", end_date: "2019, 06, 05", pet_id: "4",  sitter_id: "7"},
  {start_date: "2019, 02, 05", end_date: "2019, 03, 01", pet_id: "5",  sitter_id: "6"},
  {start_date: "2019, 02, 08", end_date: "2019, 02, 10", pet_id: "6",  sitter_id: "5"},
  {start_date: "2019, 03, 05", end_date: "2019, 04, 01", pet_id: "7",  sitter_id: "4"},
  {start_date: "2019, 02, 17", end_date: "2019, 03, 06", pet_id: "8",  sitter_id: "3"},
  {start_date: "2019, 04, 10", end_date: "2019, 04, 16", pet_id: "9",  sitter_id: "2"},
  {start_date: "2019, 05, 01", end_date: "2019, 05, 20", pet_id: "10",  sitter_id: "1"}
]
appointment.each {|appointment| Appointment.create(appointment)}
owners = [
{first_name: "Serena", last_name: "Nakatani-Brown", username: "serena",  address: "", telephone_number: "078671111111", email: "seren@gmail.com", image_url: ""},
{first_name: "Andy", last_name: "Purbrick", username: "andy",  address: "21 Mersey Road, London, E17 5LA", telephone_number: "07832111548", email: "andypurbrick@gmail.com", image_url: "https://pbs.twimg.com/profile_images/549268771484229632/WnatiHzT_400x400.jpeg"},
{first_name: "Nathan", last_name: "Bell", username: "nathan",  address: "1 Flatiron Way, London, W1 6QD", telephone_number: "07845234657", email: "nathan@gmail.com", image_url: ""},
{first_name: "Claudia", last_name: "Fox", username: "claudia",  address: "2 Flatiron Way, London, W1 6QD", telephone_number: "078956345271", email: "claudia@gmail.com", image_url: ""},
{first_name: "Kev", last_name: "Sutton", username: "kevin",  address: "3 Flatiron Way, London, W1 6QD", telephone_number: "078956345273", email: "kev@gmail.com", image_url: ""},
{first_name: "Jack", last_name: "Ling", username: "jack",  address: "6 Flatiron Way, London, W1 6QD", telephone_number: "078956345275", email: "jack@gmail.com", image_url: ""},
{first_name: "Tom", last_name: "Rowson", username: "tom",  address: "10 Flatiron Way, London, W1 6QD", telephone_number: "078956345278", email: "tom@gmail.com", image_url: ""},
{first_name: "Ian", last_name: "Harrison", username: "ian",  address: "12 Flatiron Way, London, W1 6QD", telephone_number: "078956345299", email: "ian@gmail.com", image_url: ""},
{first_name: "Janine", last_name: "Luk", username: "janine",  address: "18 Flatiron Way, London, W1 6QD", telephone_number: "078956345200", email: "janine@gmail.com", image_url: ""},
{first_name: "Holly", last_name: "Atkinson", username: "holly",  address: "20 Flatiron Way, London, W1 6QD", telephone_number: "078956345222", email: "holly@gmail.com", image_url: ""}
]
owner.each {|owner| Owner.create(owner)}
pets = [
{owner_id: "1", name: "Ozzie", age:"2", species: "Dog", gender: "Male", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Confucius_De_la_Parure.jpg/220px-Confucius_De_la_Parure.jpg"},
{owner_id: "2", name: "Yuzu", age:"3", species: "Cokatiel", gender: "Female", image_url: "https://kbimages1-a.akamaihd.net/ee85ea50-a9a3-4b01-9a74-1fb71b9e6096/1200/1200/False/cockatiel-care-for-beginners.jpg"},
{owner_id: "3", name: "Milo", age:"10", species: "cat", gender: "Male", image_url: "https://pbs.twimg.com/profile_images/1739480989/IMG_3288.JPG"},
{owner_id: "4", name: "Grumpy", age:"5", species: "Cat", gender: "Female", image_url: "https://www.grumpycats.com/images/about/tardar.jpg"},
{owner_id: "5", name: "Syd", age:"8", species: "Snake", gender: "Male", image_url: ""},
{owner_id: "6", name: "Bugs", age:"2", species: "Rabbit", gender: "Female", image_url: "http://rabbits.life/wp-content/uploads/2013/06/Background-rabbits-life-little.jpg"},
{owner_id: "7", name: "Bobert", age:"3", species: "Dog", gender: "Male", image_url: "https://dogdaygetaway.com/wp-content/uploads/2017/12/DDG-Bobert-Dec-2017-1re.jpg"},
{owner_id: "8", name: "Eric", age:"4", species: "Dog", gender: "Male", image_url: "http://www.gosocial.co/wp-content/uploads/2016/03/ericcrufts-1.jpg"},
{owner_id: "9", name: "Lil Bub", age:"5", species: "Cat", gender: "Female", image_url: "https://pbs.twimg.com/profile_images/796521014041706497/sP2bB10n_400x400.jpg"},
{owner_id: "10", name: "Mr Chips", age:"1", species: "Goldfish", gender: "Male", image_url: "http://media.petsathome.com/content/content-pages/choosing-a-fish/caf--goldfish__main.jpg"},
]
pet.each {|pet| Pet.create(pet)}
sitter = [
{first_name: "Dave", last_name: "Jones", gender: "Male", availability: [Date.new(2019, 01, 01), Date.new(2019, 02, 10)]},
{first_name: "Susan", last_name: "Boyle", gender: "Female", availability: [Date.new(2018, 12, 19), Date.new(2019, 01, 20)]},
{first_name: "Lucy", last_name: "Mitchel", gender: "Female", availability: [Date.new(2018, 12, 31), Date.new(2019, 03, 01)]},
{first_name: "Guy", last_name: "Bennett-Jones", gender: "Male", availability: [Date.new(2018, 12, 25), Date.new(2019, 05, 06)]},
{first_name: "Meghan", last_name: "Markle", gender: "Female", availability: [Date.new(2018, 12, 21), Date.new(2019, 04, 20)]},
{first_name: "William", last_name: "Windsor", gender: "Male", availability: [Date.new(2018, 12, 22), Date.new(2019, 03, 22)]},
{first_name: "Harry", last_name: "Windsor", gender: "Male", availability: [Date.new(2018, 12, 28), Date.new(2019, 02, 15)]},
{first_name: "Ricky", last_name: "Gervais", gender: "Male", availability: [Date.new(2018, 12, 29), Date.new(2019, 04, 20)]},
{first_name: "Declan", last_name: "Donelly", gender: "Male", availability: [Date.new(2018, 12, 30), Date.new(2019, 03, 20)]},
{first_name: "Simon", last_name: "Cowell", gender: "Male", availability: [Date.new(2018, 12, 19), Date.new(2019, 02, 20)]}
]
sitter.each {|sitter| Sitter.create(sitter)}
