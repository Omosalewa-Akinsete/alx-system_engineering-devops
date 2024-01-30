#!/usr/bin/env ruby
# This script has the regular expression that will match the above cases that accepts one argument and pass it to a regular expression matching method
puts ARGV[0].scan(/hbt{2,5}n/).join
