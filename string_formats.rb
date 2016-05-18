#!/usr/bin/ruby

formats = {
    md5: /^[a-f0-9]{32}$/i,
    sha1: /^[a-f0-9]{40}$/i
}

input = "5f4dcc3b5aa765d61d8327deb882cf99abcdef12"

formats.each do | format, regex |
    puts "String format: #{format}" if input =~ regex 
end
