module Jegex

  def regex(input, r)
    my_match = /#{r}/.match(input)
    if my_match
      if my_match.captures.size>0
        return my_match.captures.first
      end
    end
    ""
  end

end

class LocomotivePluginJoiner
  include Locomotive::Plugin
  def self.liquid_filters
    Jegex
  end
end