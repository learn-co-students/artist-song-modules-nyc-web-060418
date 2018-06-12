module Findable
  module ClassMethods
    def find_by_name(name)
      self.all.detect {|a| a.name == self}
    end
  end
end
