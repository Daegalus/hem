module Tailor
  @@hemmings = {}

  def hem(name, options={}, &block)
    @@hemmings[name] = block
  end
end
include Tailor
