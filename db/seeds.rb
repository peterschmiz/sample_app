User.create!(name:  "John Doe",
             email: "johndoe@example.com",
             password:              "flow123",
             password_confirmation: "flow123",
             admin: true)

99.times do |n|
	name  = Faker::Name.name
	email = "example-#{n+1}@railstutorial.org"
	password = "password"
	User.create!(name:  name,
	             email: email,
	             password:              password,
	             password_confirmation: password)
end