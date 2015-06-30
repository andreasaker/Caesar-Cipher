
def crypt (the_password, num)
	crypted = the_password.split("")
	crypted.collect! {|x| x.ord + num}
	crypted.collect! {|x| x.chr}
	crypted = crypted.join
	puts "crypted: #{crypted}"
end

def un_crypt (the_password, num)
	crypted = the_password.split("")
	crypted.collect! {|x| x.ord - num}
	crypted.collect! {|x| x.chr}
	crypted = crypted.join
	puts "Un-crypted: #{crypted}"
end

puts"1. crypt password \n2. un-crypt password"
choice = gets.chomp
case choice
	when "1"
		puts "Give me a password to crypt:"
		password = gets.chomp
		crypt(password, 5)
	when "2"
		puts "Give me a password to Un-crypt:"
		password = gets.chomp
		un_crypt(password, 5)
end