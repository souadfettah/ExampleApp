# Clear existing data
User.destroy_all
Project.destroy_all

# Create Users
user1 = User.create!(name: "Ali", email: "Ali@example.com")
user2 = User.create!(name: "Barbara", email: "Barbara@example.com")

puts "Users created!"

# Create Projects for each user
5.times do |i|
  user1.projects.create!(title: "Project #{i + 1} - Ali", status: "in progress")
end

3.times do |i|
  user2.projects.create!(title: "Project #{i + 1} - Barbara", status: "completed")
end

puts " Projects created!"

# Create Tasks for each project
Project.all.each do |project|
  2.times do |i|
    project.tasks.create!(name: "Task #{i + 1} for #{project.title}", status: "pending")
  end
end

puts " Tasks created!"
puts "Database successfully seeded!"
