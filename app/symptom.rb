class Symptom
  # PROPERTIES = [:name, :description, :diseases, :url]
  # PROPERTIES.each do |prop|
  #   attr_accessor prop
  # end

  # def initialize(attributes = {})
  # 	puts attributes
  #   attributes.each do |key, value|
  #     self.send("#{key}=", value) if PROPERTIES.member? key
  #   end
  # end

  def initialize(name, description, diseases, url)
    @name = name
    @description = description
    @diseases = diseases
    @url = NSURL.alloc.initWithString(url)
  end

  def name; @name; end
  def description; @description; end
  def diseases; @diseases; end
  def url; @url; end

  All = [
  	Symptom.new('cough', 'is coughing badly', ['flu', 'birdflu', 'some bad disease', 'some other disease'], 'http:/en.wikipedia.org/wiki/Chimay_Brewery'),
    Symptom.new('throwup', 'vomit ERRYWHERE', ['food poisoning', 'some bad disease', 'some other disease'], 'http://www.google.com'),
	Symptom.new('headache', 'head hurts', ['hangover','food poisoning', 'flu', 'some bad disease'], 'http://www.wikipedia.com')
  ]


 #  All = [
	# Symptom.new({name:'cough', description: 'is coughing badly', diseases:['flu', 'birdflu', 'some bad disease', 'some other disease'], url:'http://en.wikipedia.org/wiki/Chimay_Brewery'}),
	# Symptom.new({name:'throwup', description: 'vomit ERRYWHERE', diseases:['food poisoning', 'some bad disease', 'some other disease'], url:'http://www.google.com'}),
	# Symptom.new({name:'headache', description: 'head hurts', diseases:['hangover','food poisoning', 'flu', 'some bad disease'], url:'http://www.wikipedia.com'})
 #  ]
end