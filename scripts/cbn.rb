#!/usr/bin/env ruby
# Copy Branch Name

name = %x(git rev-parse --abbrev-ref HEAD).delete("\n")
puts "Copied '#{name}' to clipboard"
exec "echo #{name} | pbcopy"
