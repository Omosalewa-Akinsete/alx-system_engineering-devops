#!/usr/bin/env ruby
# This script has the regular expression that must be exactly matching a string that starts with "h" ends with "n" and can have any single character between that accepts one argument and pass it to a regular expression matching method
puts AGRV[0].scan(/^h.n$/).join
