#Create Users
50.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  password = 'foobar'
  User.create(name: name, email: email, password: password, password_confirmation: password)
end

#Create Events
10.times do
  description = Faker::Lorem.sentence 50
  Event.create(description: description, date: DateTime.now)
end

#Create UserEvents
user = User.first
events = Event.all
events.each do |event|
  user.user_events.create(event_id: event.id)
end
