module Inventoryfile
  class Parser

    IGNORE_CASE = /(^\s*#)|(^\s*$)/
    SECTION_CASE = /\s*\[.*\]/

    def initialize(filename)
      f = open(filename)
      @file = f.read.split("\n")
      f.close
    end

    # duplicated
    def parse(section)
      items(section)
    end

    def items(section)
      results = []
    
      find_case = /\s*\[#{section}\]/
    
      find = false
      @file.each do |i|
        line = i.chomp
    
        case line
        when IGNORE_CASE
          next
        when find_case
          find = true
          next
        else
          if line =~ SECTION_CASE
            find = false
          end
          next if find == false
    
          line.gsub!(/#.*/, "")
          line.strip!
          results << line
        end
      end
      results
    end

    def sections
      results = []

      @file.each do |i|
        line = i.chomp
        case line
        when IGNORE_CASE
          next
        when SECTION_CASE
          line.gsub!(/#.*|\[|\]/, "")
          line.strip!
          results << line
        end
      end
      results
    end
  end
end
