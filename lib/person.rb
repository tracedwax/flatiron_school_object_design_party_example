require 'delegate'

class Person
  attr_reader :name
  delegate :go_home, to: :role

  def initialize(name, role_class)
    @name = name
    @role_class = role_class
  end

  def arrive
    "#{name} arrives at the party"
  end

  def go_home
    role.go_home
  end

  private

  def role
    @role ||= role_class.new(name)
  end

  def role_class
    @role_class
  end

end
