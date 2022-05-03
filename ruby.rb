=begin
    Beskrivning: Funktionen "append1" stoppar in deltagare med med tiden noll i textdokumentet "Text.txt".
    Argument: Funktionen har inga argument.
    Return: Funktionen har ingen return.
    By: Valentin Karlsson och Albin Bergh
    Date: 03/05/22
=end

=begin
Dokument "Text.txt":
    alber
    7
    Bob
    2
    curt
    3
    elin
    5
    halbet
    6
    Stina
    8
    Bob
    5

=end

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


=begin
    Beskrivning: Funktionen "append2" skriver in deltagare med tid i textdokumentet "Text.txt"
    Argument: Funktionen har inga argument.
    Return: Funktionen har ingen return.
    By: Valentin Karlsson och Albin Bergh
    Date: 03/05/22
=end

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

=begin
    Beskrivning: Funktionen "modifiera()" ändrar tiden på en deltagare i textdokumentet "Text.txt"
    Argument: Funktionen har inga argument.
    Return: Funktionen har ingen return.
    By: Valentin Karlsson och Albin Bergh
    Date: 03/05/22
=end

def modifiera()
    array = File.readlines("Text.txt")
    o = 0
    while o < array.length
        array[o].chomp!
        o += 1
    end
    puts "Vem är det som har gått i mål?"
    p array
    namn = gets.chomp
    i = 0
    while array[i] != namn
        p namn
        i += 2
        sleep(0.5)
        p array[i]
    end
    i += 1
    puts "Vad är tiden?"
    array[i] = gets.chomp
    lista = File.open("Text.txt", "w") do |fil|
        fil.puts(array)
    end
    #crashar av en lista.close här
end

=begin
    Beskrivning: Funktionen "vinnare()" letar reda på deltagaren med kortast tid
    Argument: Funktionen har inga argument.
    Return: Funktionen har ingen return.
    By: Valentin Karlsson och Albin Bergh
    Date: 03/05/22
=end

def vinnare
    array = File.readlines("Text.txt")
    o = 0
    while o < array.length
        array[o].chomp!
        o += 1
    end
    system("cls")
    i = 1
    litetTal = array[1].to_i
    vinnare = 1
    p array
    while i < array.length 
        i += 2
        p "i = #{i}"
        if array[i].to_i < litetTal
            litetTal = array[i].to_i
            vinnare = i
            p litetTal
        end
    end
    puts "vinnaren är #{array[vinnare-1]}" 
    gets
end

=begin
    Beskrivning: Funktionen "sortTid()" sorterar deltagarnas tider utefter den minsta tiden i dokumentet "Text.txt".
    Argument:
    Return:
    By: Valentin Karlsson och Albin Bergh
    Date: 03/05/22
=end

def sortTid
    array = File.open("Text.txt", "w")
    i = 0
    while i < 16
    p array[i]
    end
    gets
end

=begin
    Beskrivning: Funktionen "lopning()" används för att dels samla alla funktioner och dels för att kunna använda alla funktiorna. Det är även till för att visa en meny för alla funktionerna som man kan använda.
    Argument: Det finns inga argument.
    Return: Funktionen har ingen return.
    By: Valentin Karlsson och Albin Bergh
    Date: 03/05/22
=end

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
            vinnare()
        elsif input == "5"
            sortTid()
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