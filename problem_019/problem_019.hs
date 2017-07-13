january = [1..31]
february year | ((year `mod` 4) == 0) && ((year `mod` 100) /= 0) = [1..29]
              | ((year `mod` 100) == 0) && ((year `mod` 400) /= 0) = [1..28]
              | ((year `mod` 400) == 0) = [1..29]
              | ((year `mod` 4) /= 0) && ((year `mod` 100) /= 0) = [1..28]
march = [1..31]
april = [1..30]
may = [1..31]
june = [1..30]
july = [1..31]
august = [1..31]
september = [1..30]
october = [1..31]
november = [1..30]
december = [1..31]

the_year year = january ++ (february year) ++ march ++ april ++ may ++ june ++ july ++ august ++ september ++ october ++ november ++ december

start_date = (365 `mod` 7)+1

-- Since start_date was monday for 1900, the start date for 1901 is a wednesday (last day of 1900 was +1 of monday, aka tuesday)

century = concat( map (the_year) [1901..2000])

start_count = drop 4 century 

weekly = cycle ["sunday","monday","tuesday","wednesday","thursday","friday","saturday"]

total_length = [0..length(start_count)]

monday_count = length ([ x | x <- total_length, (weekly !! x) == "monday", (start_count !! x) == 1])
-- Since the first day is wednesday, 4 days (wednesday, thursday, friday, saturday) can be removed to start the sequence on sunday