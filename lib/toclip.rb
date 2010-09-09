require 'pb'

module ToClip
  def to_clip
    PB.copy self.inspect
    self
  end
end

Object.send(:include, ToClip)
