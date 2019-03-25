# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Phrase.destroy_all


puts 'Creating test users...'

user1 = User.create(email: 'joelsveltena@mailtime.com', password: '10101010')
user2 = User.create(email: 'margel@mailtime.com', password: '10101010')
user3 = User.create(email: 'laura@mailtime.com', password: '10101010')

user1.save!
user2.save!
user3.save!

puts 'Creating test phrases...'

phrase1 = Phrase.create!(
  first_word: 'Incessant',
  second_word: 'Spin',
  color: '#e5ccff',
  user: user1
)

phrase1.save!

phrase2 = Phrase.create!(
  first_word: 'Tender',
  second_word: 'Outreach',
  color: '#ffe0ff',
  user: user2
)

phrase2.save!

phrase3 = Phrase.create!(
  first_word: 'Functional',
  second_word: 'Career',
  color: '#81acf4',
  user: user3
)

phrase3.save!

phrase4 = Phrase.create!(
  first_word: 'Morning',
  second_word: 'Roll',
  color: '#efeed2',
  user: user1
)

phrase4.save!

phrase5 = Phrase.create!(
  first_word: 'Encrusted',
  second_word: 'Similarities',
  color: '#ffa885',
  user: user2
)

phrase5.save!

phrase6 = Phrase.create!(
  first_word: 'Cherished',
  second_word: 'Topography',
  color: '#ffcf91',
  user: user3
)

phrase6.save!

phrase7 = Phrase.create!(
  first_word: 'Slippery',
  second_word: 'Rhizome',
  color: '#89ffeb',
  user: user1
)

phrase7.save!

phrase8 = Phrase.create!(
  first_word: 'Succulent',
  second_word: 'Tale',
  color: '#c8f966',
  user: user2
)

phrase8.save!

puts 'Done!'
