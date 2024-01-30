#!/usr/bin/env ruby
# This script has the regular expression must match "School" that accepts one argument and pass it to a regular expression matching method
puts ARGV[0].scan(/School/).join
