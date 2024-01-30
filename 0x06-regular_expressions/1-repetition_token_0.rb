#!/usr/bin/env ruby
# This script accepts one argument and pass it to a regular expression matching method
puts ARGS[0].scan(/hbt{2,5}n/).join
