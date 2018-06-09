module Memorable

  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end

  # def reset_all
  #   @@songs.clear
  # end
  #
  # def count
  #   @@artists.count
  # end


  module Findable

    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end

  end

  module Paramable

    def initialize
      self.class.all << self
    end

    def to_param
      name.downcase.gsub(' ', '-')
    end

  end


end
