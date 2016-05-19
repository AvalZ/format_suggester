# String format suggester
A simple Ruby CLI string format suggester.

    Usage: ./string_formats.rb <string>

WARNING: a string might be interpreted as multiple possible formats (e.g. lower-case MD5 and Base64).
This tool gives suggestions ordered by relevance, so first results are more likely to be the right results.

    $> ./string_formats.rb '26dcfc59d137109c34a8992cef3eae2d'
    
       String format: md5
       String format: base64