def append1()
    puts "Vilken är den nya deltagarens namn?"
    lista = File.open("Text.txt", "a")
    namn = gets.chomp
    lista.puts(namn)
    lista.puts("0")
    while namn != "ut"
        puts "Vilken är den nya deltagarens namn? Skriv `ut` om du vill komma till startmenyn"
        lista.puts(namn)
        lista.puts("0")
        namn = gets.chomp
        puts "1"
    end
    puts "2"
    lista.close
end



def append2()
    puts "Vilken är den nya deltagarens namn?"
    lista = File.open("Text.txt", "a")
    namn = gets.chomp
    lista.puts(namn)
    puts "Vilken tid hade deltagaren?"
    tid = gets.chomp
    lista.puts(tid)
    while namn != "ut"
        puts "Vilken är den nya deltagarens namn? Skriv `ut` om du vill komma till startmenyn"
        namn = gets.chomp
        lista.puts(namn)
        puts "Vilken tid hade deltagaren?"
        if namn != "ut"
            tid = gets.chomp
            lista.puts(tid)
        end
        puts "1"
    end
    puts "2"
    lista.close
end

def modifiera()
    array = File.readlines("Text.txt")
    p array
    gets
    puts "Vem är det som har gått i mål?"
    namn = gets.chomp
    i = 0
    while array[i] != namn
        p namn
        p array
        p array[i]
        i += 1
        sleep(5)
    end
    i += 1
    puts i
    puts "Vad är tiden?"
    array[i] = gets.chomp


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
            modifiera()
        elsif input == "4"
        elsif input == "5"
        elsif input == "6"
        else 
            puts "Vad sa du? Ingen input som förväntades."
        end
        system("cls")

        puts "meny"
        input = gets.chomp
    end
end

p lopning()