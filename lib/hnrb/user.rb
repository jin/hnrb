module HNrb
  class User 

    PROPERTIES = [:id, :delay, :created, :karma, :about, :submitted]
    PROPERTIES.each do |p|
      attr_accessor p 
    end

    def initialize(attributes = {})
      attributes.each do |k, v|
        self.send("#{k.to_sym}=", v) if PROPERTIES.member? k.to_sym
      end
    end

  end
end
