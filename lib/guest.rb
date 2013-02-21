class Guest < Struct.new(:name)
  def go_home
    "#{name} goes home"
  end
end
