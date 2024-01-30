#!/usr/bin/env ruby
# This script has the regular expression that must be only matching: capital letters
puts ARGS[0].scan(/[A-Z]/).join
