class Item

  PROPERTIES = [:id, :deleted, :type, :by, :time, :text, :dead, :parent, :kids, :url, :score, :title, :parts]
  PROPERTIES.each do |p|
    attr_accessor prop
  end

  def initialize(attributes = {})
    attributes.each do |k, v|
      self.send("#{k}=", v) if PROPERTIES.member? key
    end
  end

end
