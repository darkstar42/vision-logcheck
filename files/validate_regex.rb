#!/usr/bin/ruby
# Simple validation for regex using egrep. Feel free to write something better.


require 'open3'


folder = 'files/ignore.d.server'.chomp


Dir.entries(folder).each do | regex |

  next if regex == '.' || regex == '..'

  stdout, stderr, status = Open3.capture3("egrep -f #{folder}/#{regex} #{$0}")

  if not stderr.to_s == ''
    puts(stderr)
    puts("Error in #{regex}")
    exit 2
  end

end

# That's all folks
exit 0
