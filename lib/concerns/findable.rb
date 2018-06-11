module Findable

  def find_by_name(name)
    all.detect do |x|
      x.name == name
    end
  end
end
