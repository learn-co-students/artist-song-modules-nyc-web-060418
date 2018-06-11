module Findable

  def find_by_name(string)
    all.detect{|a| a.name == string}
  end

end
