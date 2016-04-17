class Project
  attr_reader :funding, :target_amount
  attr_accessor :name
  def initialize(name, target_amount, funding=0)
    @name = name
    @funding = funding
    @target_amount = target_amount
  end

  def to_s
    "#{@name} has $#{@funding} in funding towards a goal of $#{@target_amount}.  #{@name} is $#{funding_needed} away from $#{@target_amount}"
  end

  def decrease
    @funding -= 15
    puts "#{@name} lost some funds!"
  end

  def increase
    @funding += 25
    puts "#{@name} got more funds!"
  end

  def funding_needed
    @target_amount - @funding
  end

  def fully_funded?
    funding_needed <= 0
  end


end

if __FILE__ == $0
  project1 = Project.new('Project LMN', 3000, 500)
  project1.decrease
  project1.increase
  puts project1
end