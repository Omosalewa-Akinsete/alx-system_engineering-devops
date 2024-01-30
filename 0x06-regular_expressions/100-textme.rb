#!/usr/bin/env ruby
# This script should output "[SENDER],[RECEIVER],[FLAGS]", the sender phone number or name, the receiver phone number or name and the flags that were used
def extract_textme_info(log)
  sender = log.match(/\[from:(.*?)\]/)[1]
  receiver = log.match(/\[to:(.*?)\]/)[1]
  flags = log.match(/\[scan:(.*?)\]/).join
  "#{sender},#{receiver},#{flags}"
end
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} [log_file]"
  exit 1
end
log_file = ARGV[0]
unless File.file?(log_file)
  puts "Error: #{log_file} not found!"
  exit 1
end
log_lines = File.readlines(log_file)
log_lines.each do |line|
  if line.include?('SMS [from:') && line.include?('[to:') && line.include?('[flags:')
    puts extract_textme_info(line)
  end
end
