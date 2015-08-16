module Inventoryfile
  class Parser
    def initialize(file)
      @file = file
    end

    def parse(section)
    
      items = []
    
      ignore_case = /(^\s*#)|(^\s*$)/
      find_case = /\s*\[#{section}\]/
    
      find = false
      f = open(@file)
      f.each do |i|
        line = i.chomp
    
        case line
        when ignore_case
          next
        when find_case
          find = true
          next
        else
          if line =~ /\s*\[.*\]/
            find = false
          end
          next if find == false
    
          line.gsub!(/#.*/, "")
          line.strip!
          items << line
        end
      end
      f.close
      items
    end
  end
end
