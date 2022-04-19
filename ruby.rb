def append1()
    puts "vilken är den nya deltagarens namn?"
    nytt = gets
    while nytt != "ut"
        puts "vilken är den nya deltagarens namn? skriv `ut` om du vill komma till startmenyn"
        nytt = gets
        lista = File.open("text.txt", "a")
        lista.puts(nytt)
        lista.puts("0")
        puts "1"
    end
    puts "2"
end

def append2()
    puts "vilken är den nya deltagarens namn?"
    nytt = gets
    while nytt != "ut"
        puts "vilken är den nya deltagarens namn? ut"
        nytt = gets
        lista = File.open("text.txt", "a")
        lista.puts(nytt)

        puts "vilken är den nya deltagarens tid? ut" 
        nytt = gets
        lista = File.open("text.txt", "a")
        lista.puts(nytt)
    end
end

def lopning()
    system("cls")
    puts "meny"
    input = gets.chomp
    while input != "end"
        if input == "1"
            append1()
        elsif input == "2"
            append2()
        elsif input == "3"
        elsif input == "4"
        elsif input == "5"
        elsif input == "6"
        else 
            puts "vad sa du? Ingen input som förväntades."
        end
        system("cls")
        puts "meny"
        input = gets.chomp
    end
end

p lopning()