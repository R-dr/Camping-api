new_users = [{ name: 'steve', email: 'steve@s.com', password: 'password', is_admin: false },
             { name: 'Jess', email: 'Jessica@j.com', password: 'Password', is_admin: false }, { name: 'admin', email: 'drako645@gmail.com', password: 'AdminPassword', is_admin: true }]
location_facilities = ['Toilets', 'Fire pits', 'Gas fires only', 'Water', 'River access', 'Toilet drop point', 'Pub']

location_types = ['River', 'Beach', 'Caravan park', 'Free', 'Paid', 'High Country', 'Forest', 'desert']
if User.count.zero?
  new_users.each do |user|
    User.create(username: user[:name], email: user[:email], password: user[:password],
                password_confirmation: user[:password], is_admin: user[:is_admin])
    puts "Created #{user[:name]} User"
  end
else
  puts 'User database already seeded'
end
if Facility.count.zero?
  location_facilities.each do |fac|
    Facility.create(name: fac)
    puts "Created #{fac} facility"
  end
else
  puts 'Facility database already seeded'
end
if LocationType.count.zero?
  location_types.each do |type|
    LocationType.create(name: type)
    puts "Created #{type} Location Type"
  end
else
  puts 'Location type database already seeded'
end
if Location.count.zero?
  Location.create(location_type_id: 1, name: 'Coopers creek', address: 'Coopers Creek VIC 3825',
                  description: 'this camp ground has a few potential sites either atop the hill in the west or by the river to the south, located close enough to walhalla should you need to get supplies')
  puts 'Coopers creek seeded'
else
  puts 'location already seeded'
end
LocationFacility.create(facility_id: 1, location_id: 1)
LocationFacility.create(facility_id: 6, location_id: 1)
Favorite.create(user_id: 1, location_id: 1)
Review.create(user_id: 1, location_id: 1,
              body: "I've been camping here since i was a we lad, while its become more restricted in recent years it still has a certain charm about it")
