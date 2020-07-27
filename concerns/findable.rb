

module Findable

  def self.find_by_name(name)
    self.all.each{|thing| return thing if thing.name == name}
    return nil
  end

  def self.find_or_create_by_name
    return self.find_by_name unless self.find_by_name
    return self.new(name)
  end

end
