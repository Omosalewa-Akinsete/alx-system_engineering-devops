#!/usr/bin/env ruby
# This script has the regular expression that must be only matching: capital letters
puts ARGV[0].scan(/[A-Z]/).join
