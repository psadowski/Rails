# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
  Post.create({
    caption:'Hello',
    created_at: Faker::Date.between(2.days.ago, Date.today),
    updated_at: Faker::Date.between(3.days.ago, Date.today),
    image_file_name: File.open(File.join(Rails.root, "/app/assets/images/loginbg.jpg")),
    image_content_type: "image/jpeg",
    image_file_size: 43637,
    image_updated_at: Faker::Date.between(6.days.ago, Date.today),
    user_id: 1,
    })
end
