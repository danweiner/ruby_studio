require_relative 'project'
require_relative 'die'

class StartUpProjects

  attr_reader :name

  def initialize(name)
    @name = name
    @projects = []
  end


  def add_project(a_project)
    @projects << a_project
  end

  def request_funding
    puts "There are #{@projects.count} projects in #{@name}."
    @projects.each do |project|
      puts project
    end

    @projects.each do |project|
      die = Die.new
      number_rolled = die.roll
      if number_rolled.odd?
        project.decrease
      else
        project.increase
      end
      puts project
    end
  end

end

if __FILE__ == $0
  project1 = Project.new('Project LMN', 3000, 500)
# puts project1
  project2 = Project.new('Project XYZ', 75, 25)
  project3 = Project.new('Project ABC', 500, 200)

  vcfunding = StartUpProjects.new("VC-Friendly Start-up Projects")

  vcfunding.add_project(project1)
  vcfunding.add_project(project2)
  vcfunding.add_project(project3)
  vcfunding.request_funding
end