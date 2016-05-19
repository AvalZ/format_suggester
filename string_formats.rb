#!/usr/bin/env ruby

unless ARGV[0] then
    puts "String format suggester."
    puts "Usage: #{$0} 'string'"
    puts "\tNOTE: a string may be interpreted in multiple formats."
end

formats = {
    md5: /^[a-f0-9]{32}$/i,
    sha1: /^[a-f0-9]{40}$/i,
    bcrypt: /^\$2[aby]?\$[0-9]{2}\$[A-Za-z0-9\.\/]{22}[A-Za-z0-9\.\/]{31}$/,
    base64: /^([A-Za-z0-9\+\/]{4})*([A-Za-z0-9\/\+]{2}[A-Za-z0-9\/\+=]{2})?$/,
    base56: /^[A-HJ-NP-Za-kmnp-z2-9]*$/,
    base58: /^[A-HJ-NP-Za-km-z1-9]*$/,
}

input = ARGV[0]

formats.each do | format, regex |
    puts "String format: #{format}" if input =~ regex 
end
