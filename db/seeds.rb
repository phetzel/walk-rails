# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Walk.destroy_all

DISTANCES = [44, 33, 44, 22, 11, 10, 9, 8]
TIMES = ['12:34:56', '23:45:12', '00:23:45', '00:12:34', '00:00:12']
ACTIVITIES = ['walk', 'run', 'roller-skate', 'star']

x = 1
while x <= 40
    Walk.create!(
        id: x,
        user_id: 3,
        distance: DISTANCES.sample,
        time: TIMES.sample,
        activity: ACTIVITIES.sample,
        created_at: x.days.ago
    )

    x += 1
end 

LatLng.destroy_all
