# String format suggester
A simple Ruby CLI string format suggester.

    Usage: ./string_formats.rb <string>

WARNING: a string might be interpreted as multiple possible formats (e.g. lower-case MD5 and Base64).
This tool gives suggestions ordered by relevance, so first results are more likely to be the right results.

    $> ./string_formats.rb '26dcfc59d137109c34a8992cef3eae2d'
    
       String format: md5
       String format: base64

Supported formats:
* MD5
* SHA1
* SHA224 - SHA512/224
* SHA256 - SHA512/256
* SHA386
* SHA512
* BCrypt ( *2* | *2a* | *2b* | *2y* | *2x (legacy)* formats)
* Base64 ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-4 "Base64 Format"))
* Base58
* Base56
