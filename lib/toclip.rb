require 'pb'

module ToClip
  def to_clip
    PB.copy self.inspect
    self
  end
  alias_method :toclip, :to_clip
end

Object.send(:include, ToClip)
