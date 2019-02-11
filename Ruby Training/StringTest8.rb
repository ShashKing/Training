    "rubyguides".each_char { |ch| print ch }
    puts
    puts "abcd".upcase
    puts "ShaShaNK".downcase

    b=<<-STRINGKBC
    aaa
    bbb
    ccc
    STRINGKBC
    puts b

    string="we have many dogs"
    puts string.gsub("dogs","cats")

    string2="abcccc"
    puts string2.gsub("c","")

