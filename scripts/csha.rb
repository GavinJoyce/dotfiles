#!/usr/bin/env ruby
# Copy SHA

sha = %x(git rev-parse --short HEAD).delete("\n")
summary = %x(git log --oneline -1)
puts "Copied SHA to clipboard : #{summary}"
exec "echo #{sha} | pbcopy"
