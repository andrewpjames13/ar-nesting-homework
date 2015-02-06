# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





@companies = 30.times.map do
  {
    name: Faker::Company.name,
    suffix: Faker::Company.suffix,
    catch_phrase: Faker::Company.catch_phrase,
    email: Faker::Internet.email,
    start_date: Faker::Date.backward(1500),
    industry: %w[Tech Medical Education Finance].sample
  }
end



@products = 60.times.map do

  {
    department: Faker::Commerce.department,
    product_name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    company_id: (1..30).to_a.sample

  }
end


@locations = 150.times.map do
  {
     city: Faker::Address.city,
     street_name: Faker::Address.street_name,
     state: Faker::Address.state,
     zip_code: Faker::Address.zip,
     country: Faker::Address.country,
     company_id: (1..30).to_a.sample,
   }
end


@reviews = 120.times.map do

  {
   title: Faker::Lorem.word,
   description: Faker::Lorem.paragraph,
   product_id: (1..60).to_a.sample,
   rating: (1..10).to_a.sample
  }

end

@reviews.each do |review|
  Review.create(:title => review[:title], :description => review[:description], :product_id => review[:product_id], :rating => review[:rating])
end

@products.each do |product|
  Product.create(:department => product[:department], :name => product[:product_name], :price => product[:price], :company_id => product[:company_id])
end

@companies.each do |company|
  Company.create(:name => company[:name], :suffix => company[:suffix], :catch_phrase => company[:catch_phrase], :email => company[:email], :start_date => company[:start_date],  :industry => company[:industry])
end

@locations.each do |location|
  Location.create(:city => location[:city], :street_name => location[:street_name], :state => location[:state], :zip_code => location[:zip_code], :country => location[:country], :company_id => location[:company_id])
end
