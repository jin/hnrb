class User 

  PROPERTIES = [:id, :delay, :created, :karma, :about, :submitted]
  PROPERTIES.each do |p|
    attr_accessor prop
  end

  def initialize(attributes = {})
    attributes.each do |k, v|
      self.send("#{k}=", v) if PROPERTIES.member? key
    end
  end

end
