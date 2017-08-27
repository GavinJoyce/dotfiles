#!/usr/bin/env ruby

require 'rake/pathmap'

if ARGV.length != 2 || !File.exist?(ARGV[0])
  puts "Usage: vfr2cfr.rb SRC_PATH DEST_PATH"
  exit false
end

@src = File.expand_path(ARGV[0])
@target = File.expand_path(ARGV[1])

def target_file(file_path)
  target_file_path = file_path.pathmap "%X-[CFR]%x"
  File.join @target, File.basename(target_file_path)
end

if File.file?(ARGV[0])
  src_files = [ARGV[0]]
else
  src_files = ['mp4', 'avi', 'mkv'].map {|extension| Dir[File.join(@src, "**/*.#{extension}")] }.flatten
end

src_target_map = src_files.inject({}) {|m, src| m.merge(src => target_file(src)) }

puts "Converting #{src_target_map.length} files:"

src_target_map.keys.sort.each_with_index do |src, index|
  target = src_target_map[src]
  `mkdir -p "#{File.dirname(target)}"`
  $stdout << "Converting #{File.basename(src)} #{index + 1}/#{src_target_map.length}..."
  $stdout.flush

  `HandbrakeCLI -i "#{src}" -o "#{target}" -f av_mp4 -e x264 -q 18 --cfr --auto-anamorphic`
  # `HandbrakeCLI -i "#{src}" -o "#{target}" -f av_mp4 -e x264 -q 18 --cfr --auto-anamorphic -2 -T -B 192 > /dev/null 2>&1`
  puts "done"
end

puts "#{src_target_map.length} files converted"
