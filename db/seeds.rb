puts "🌱 Seeding spices..."

puts "Creating teams..."
Team.create(name: "Google")
Team.create(name: "Facebook")
Team.create(name: "Dunder Mifflin")
Team.create(name: "Enron")

puts "Creating employees..."
Employee.create(name: Faker::Name.name, username: "employee1", password: "employee2")
Employee.create(name: Faker::Name.name, username: "employee2", password: "employee2")
Employee.create(name: Faker::Name.name, username: "employee3", password: "employee2")
Employee.create(name: Faker::Name.name, username: "employee4", password: "employee2")



puts "Creating tasks..."

25.times{Task.create(task_description:Faker::Job.field, status:"Pending", priority:"Low", due_date:Faker::Date.between(from: '2022-04-20', to: '2022-09-25'), employee_id: rand(1..4), team_id: rand(1..4))}

puts "✅ Done seeding!"
