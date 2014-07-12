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

module LocomotivePluginJoiner
  class LocomotivePluginJoiner
    include Locomotive::Plugin
    
    def self.default_plugin_id
      'joiner'
    end
  
    def self.plugin_loaded
        puts "joiner plugin LOADED :D :D :D"
    end

    def self.liquid_filters
      Filters
    end
  end
end