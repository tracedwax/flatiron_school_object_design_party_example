class Host < Struct.new(:name)
  def go_home
    "#{name} goes to bed"
  end
end
