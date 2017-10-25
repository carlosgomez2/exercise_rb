# Mixin module
module Debug
  def who_i_am?
    "#{self.class.name} (id: #{self.object_id}: #{self.name})"
  end
end

class Phonograph
  include Debug # By including Debug module, both classes gain access to who_i_am? instance method
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class EightTrack
  include Debug # By including Debug module, both classes gain access to who_i_am? instance method
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

ph = Phonograph.new("West end Blues")
et = EightTrack.new("Surrealistic Pillow")

puts ph.who_i_am? # => Phonograph (id: 47214617040820: West end Blues)
puts et.who_i_am? # => EightTrack (id: 47214617040780: Surrealistic Pillow)
