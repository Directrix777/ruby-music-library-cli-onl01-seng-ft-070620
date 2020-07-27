

module Findable

  def self.find_by_name(name)
    self.all.each{|thing| return thing if thing.name = name}
  end
end
