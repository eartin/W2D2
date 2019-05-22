require_relative 'employee.rb'
class Manager < Employee
  def initialize(employees = [])
    super 
    @employees = employees
  end

  def bonus(multiplier)
    sum = 0
    employees.each {|employee| sum+=employee.salary}
    sum * multiplier
  end

end