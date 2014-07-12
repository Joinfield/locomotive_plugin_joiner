module Filters

  def regex(input, r)
    my_match = /#{r}/.match(input)
    if my_match
      if my_match.captures.size>0
        return my_match.captures.first
      end
    end
    ""
  end

  def add_http(input)
    if input.start_with?('http://')
      input
    else
      "http://#{input}"
    end
  end

end

class LocomotivePluginJoiner
  include Locomotive::Plugin
  def self.liquid_filters
    Filters
  end
end