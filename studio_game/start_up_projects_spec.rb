require_relative 'start_up_projects'
require_relative 'spec_helper'

describe StartUpProjects do
  before do
    @startupproject = StartUpProjects.new("VC-friendly Start-up Projects")
    @funding = 1000
    @project = Project.new("Project ABC", 5000, @funding)
    @startupproject.add_project(@project)
  end
  it "adds funds to a project if an even number is rolled" do
    Die.any_instance.stub(:roll).and_return(4)

    @startupproject.request_funding

    @project.funding.should == @funding + 25
  end
  it "removes funds to a project if an odd number is rolled" do
    Die.any_instance.stub(:roll).and_return(3)

    @startupproject.request_funding

    @project.funding.should == @funding - 15
  end
end