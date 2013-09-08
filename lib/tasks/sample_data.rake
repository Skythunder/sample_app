namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Rui Silva",
                 email: "skythunder3@hotmail.com",
                 password: "foobar",
                 password_confirmation: "foobar",
				 admin: true)
	User.create!(name: "Admin Tester",
				 email: "admin@example.com",
				 password: "foobar",
				 password_confirmation: "foobar",
				 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end