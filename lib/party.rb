# require 'person'

class Party < Struct.new(:guests)
  def host_event
    begin_party
    # drink
    # dance
    # end_party
  end

  def begin_party
    guests.map(&:arrive)
  end

  def end_party
    guests.map(&:go_home)
  end
end
