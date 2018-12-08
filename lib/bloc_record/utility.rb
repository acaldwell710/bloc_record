module BlocRecord
  module Utility
#   #1
    extend self

    def underscore(camel_cased_word)
#      #2
       string = camel_cased_word.gsub(/::/, '/')
#      #3
       string.gsub!(/([A-Z]+)([A-Z][a-z])/,'\1_\2')
#      #4
       string.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
#      #5
       string.tr!("-", "_")
#      #6
       string.downcase
    end
  end
end
