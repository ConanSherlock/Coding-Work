#Prints the years that are leap years
time = Time.new
year = time.year+1
count = 0

while(count<=20)
    if (year%400)==0
        puts "#{year} is a leap year\n"
        count+=1
    elsif (year%4)==0 && (year%100)!=0
        puts "#{year} is a leap year\n"
        count+=1
    end
    year+=1
end
