class Item

  PROPERTIES = [:id, :deleted, :type, :by, :time, :text, :dead, :parent, :kids, :url, :score, :title, :parts]
  PROPERTIES.each do |p|
    attr_accessor p 
  end

  def initialize(attributes = {})
    attributes.each do |k, v|
      self.send("#{k.to_sym}=", v) if PROPERTIES.member? k.to_sym
    end
  end

end
