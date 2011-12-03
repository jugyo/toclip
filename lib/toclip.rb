require 'clipboard'

module ToClip
  def to_clip(object = nil)
    object = object || self
    Clipboard.copy object.is_a?(String) ? object : object.inspect
    object
  end
  alias_method :toclip, :to_clip
end

Object.send(:include, ToClip)
