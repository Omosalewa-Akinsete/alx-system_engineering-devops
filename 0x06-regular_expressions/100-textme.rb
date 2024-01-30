#!/usr/bin/env ruby
# This script should output "[SENDER],[RECEIVER],[FLAGS]", the sender phone number or name, the receiver phone number or name and the flags that were used
puts ARGV[0].scan(/[^a-zA-Z0-9]/).join
