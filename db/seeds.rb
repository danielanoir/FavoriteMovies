Genre.destroy_all

drama = Genre.create(category: "DRAMA")
comedy = Genre.create(category: "COMEDY")
romance = Genre.create(category: "ROMANCE")
thriller = Genre.create(category: "THRILLER")
action = Genre.create(category: "ACTION")
documentary = Genre.create(category: "DOCUMENTARY")
war = Genre.create(category: "WAR")
musical = Genre.create(category: "MUSICAL")
mystery = Genre.create(category: "MYSTERY")
horror = Genre.create(category: "HORROR")
sciFi = Genre.create(category: "SCI-FI")
fantasy = Genre.create(category: "FANTASY")

 User.create!(name:  "Daniela Noir",
              email: "daniela@danielanoir.com",
              password:              "projecttwo",
              password_confirmation: "projecttwo",
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
