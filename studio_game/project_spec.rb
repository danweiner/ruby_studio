require_relative 'spec_helper'

require_relative 'project'



describe Project do
  before do
    @funding = 2500
    @target_amount = 5000
    @project = Project.new("Project ABC", @target_amount, @funding)
    $stdout = StringIO.new
  end
  it "has an initial target funding amount" do

    @project.target_amount.should == 5000
  end

  it "computes total funding outstanding as target minus funding needed" do
    
    @project.funding_needed.should == (5000 - 2500)
  end

  it "increases funds by 25 when funds are added" do

    @project.increase

    @project.funding.should == (2500 + 25)
  end

  it "decreases funds by 15 when funds are removed" do

    @project.decrease

    @project.funding.should == (2500 - 15)
  end

  context "created without a funding amount" do
    before do
      @project = Project.new("Project ABC", 5000)
    end
    it "should have a default value of 0 for funding amount" do
      @project.funding.should == 0
    end
  end

  context "when total funding outstanding is less than or equal to 0" do
    before do
      @project = Project.new("Project ABC", 5000, 5000)
    end
    it "is fully-funded" do
      @project.should be_fully_funded
    end
  end

   context "when total funding outstanding is greater than 0" do
    before do
      @project = Project.new("Project ABC", 5000, 1000)
    end
    
    it "is under-funded" do
      @project.should_not be_fully_funded
    end
  end

end