#!/usr/bin/env ruby
# This script should output "[SENDER],[RECEIVER],[FLAGS]", the sender phone number or name including country code if present, the receiver phone number or name including country code if present and the flags that were used
puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
