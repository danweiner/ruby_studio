require_relative 'start_up_projects'

project1 = Project.new('Project LMN', 3000, 500)
# puts project1
project2 = Project.new('Project XYZ', 75, 25)
project3 = Project.new('Project ABC', 500, 200)

vcfunding = StartUpProjects.new("VC-Friendly Start-up Projects")

vcfunding.add_project(project1)
vcfunding.add_project(project2)
vcfunding.add_project(project3)
vcfunding.request_funding
# puts project2
# project1.decrease
# project2.increase
# puts project1
# puts project2

# project1.name = "NOP"
# puts project1

# projects = [project1, project2, project3]

# puts projects.length

# projects.each do |project|
#   puts project.name
#   puts project.funding
#   puts project.target_amount
#   puts project.funding_needed
#   project.decrease
#   puts project
# end

# puts "Project ABC is removed and Project TBD is added.  Now we have:"

# projects.delete(project3)
# project4 = Project.new("Project TBD", 10000)
# projects << project4

# puts projects