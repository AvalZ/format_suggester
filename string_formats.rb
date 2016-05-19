#!/usr/bin/ruby

formats = {
    md5: /^[a-f0-9]{32}$/i,
    sha1: /^[a-f0-9]{40}$/i,
    bcrypt: /^\$2[aby]?\$[0-9]{2}\$[A-Za-z0-9\.\/]{22}[A-Za-z0-9\.\/]{31}$/,
    base64: /^([A-Za-z0-9\+\/]{4})*([A-Za-z0-9\/\+]{2}[A-Za-z0-9\/\+=]{2})?$/,
}

input = ARGV[0]

formats.each do | format, regex |
    puts "String format: #{format}" if input =~ regex 
end
