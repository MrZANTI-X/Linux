#           		}••••MrZANTI'X•••{
			##################
#tocken Acc=    https://graph.facebook.com/me?access_token='
#info =   	https://graph.facebook.com/"+i['id']+"?access_token=
# https://graph.facebook.com/me/subscribers?access_token=
  $r = "\033[1;91m"
  $g = "\033[1;92m"
  $y = "\033[1;93m"
  $p = "\033[1;94m"
  $m = "\033[1;95m"
  $c = "\033[1;96m"
  $w = "\033[1;97m"
  $a = "\033[1;0m"
  require 'net/http'
  require 'json'
  require 'pp'
 
  $t = Time.new

  system"touch info.txt"
  $f = File.new("info.txt","r+")

 module Msst
  print "#{$r}[#{$c}!#{$r}] #{$p}==> #{$m}Token : #{$w}" 
  $token = gets.chomp! 
  print "#{$r}[?]#{$m} TAP-TO-RUN#{$w}" ; a = gets 
  #myip 
  myip = Net::HTTP.get(URI("https://api.ipify.org?format=json"))
  myuri = JSON.parse(myip)
  #my information ℹ️
  myinfo = Net::HTTP.get(URI("https://graph.facebook.com/me?access_token=#{$token}")) 
  myinfous = JSON.parse(myinfo) 
  print "#{$r}UPTIME   : #{$m}" ; puts "#{$t}"
  print "#{$r}IPv4     : #{$y}" ; puts myuri['ip']
  print "#{$r}Email id : #{$w}" ; puts myinfous['email'] 
  print "#{$r}Name     : #{$w}" ; puts myinfous['first_name'] 
  print "#{$r}Birthday : #{$w}" ; puts myinfous['birthday'] 
  print "#{$r}UID      : #{$w}" ; puts myinfous['id'] 
  print "#{$r}Git-Link : #{$w}" ; puts myinfous['link'] 
  print "#{$r}Ginder   : #{$w}" ; puts myinfous['gender'] 
  puts "" 

  puts "#{$r}}•••#{$y}||#{$w} #{$m}FB_SYSTEM #{$y}||#{$r}•••{" 

  puts ""

  puts "#{$y}[1] #{$g}==> #{$r}My-info 📜 #{$w}" 
  sleep (0.1)
  puts "#{$y}[2] #{$g}==> #{$r}Get-firend 👥 #{$w}" 
  sleep (0.1)
  puts "#{$y}[3] #{$g}==> #{$r}All-Data 📝 #{$w}" 
  sleep (0.1) 
  puts "#{$y}[4] #{$g}==> #{$r}get-firend 👥 #{$w}"
  sleep (0.1) 
  puts "#{$y}[5] #{$g}==> #{$r}subscribers 🤖 #{$w}" 
  sleep (0.1) 
  puts "#{$y}[6] #{$g}==> #{$r}Target-token-information#{$w} ℹ️ " 
  puts "}•••••|> ∆ <|•••••{"
  sleep (0.1)
  print "#{$r}[?] #{$m}Enter any one ? = #{$w}" ; ans = gets.chomp
	case ans
	when '1'
	uri = Net::HTTP.get(URI("https://graph.facebook.com/me?access_token=#{$token}"))
	tyss = JSON.parse(uri)
	pp tyss
	when '2'
	print "Enter id : "
	id = gets.chomp!
	ouri = Net::HTTP.get(URI("https://graph.facebook.com/#{id}?access_token=#{$token}"))
	pass = JSON.parse(ouri)
	pp pass
	when '3'
	print "started ...."
	sleep (0.1)
	soi = Net::HTTP.get(URI("https://graph.facebook.com/me/friends?access_token=#{$token}"))
	a = JSON.parse(soi)
	pp a
	when '4'
	print "Enter facebook id : "
	sid = gets.chomp
	aa = Net::HTTP.get(URI("https://graph.facebook.com/#{sid}?fields=friends.limit(50000)&access_token=#{$token}"))
	as = JSON.parse(aa)
	pp as
	$f.syswrite(as)
	when '5'
	sc = Net::HTTP.get(URI("https://graph.facebook.com/me/subscribers?access_token=#{$token}"))
	cs = JSON.parse(sc)
	pp cs
	when '6'
	print "#{$r}[?] Enter Target Token : #{$w}" ; tagtoken = gets.chomp
	sxc = Net::HTTP.get(URI("https://graph.facebook.com/me?access_token=#{tagtoken}"))
	sox = JSON.parse(sxc)
sleep (0.1)
	print "#{$w}#{$r}FB UID             : #{$y}" ; pp sox['id']
sleep (0.1)
	print "#{$w}#{$r}Name               : #{$y}" ; pp sox['name']
sleep (0.1)
	print "#{$w}#{$r}Username           : #{$y}" ; pp sox['username']
sleep (0.1)
        print "#{$w}#{$r}Profile Link       : #{$y}" ; pp sox['link']
sleep (0.1)
	print "#{$w}#{$r}Birthday           : #{$y}" ; pp sox['birthday']
sleep (0.1)
	print "#{$w}#{$r}Email              : #{$y}" ; pp sox['email']
sleep (0.1)
	print "#{$w}#{$r}First_name         : #{$y}" ; pp sox['first_name']
sleep (0.1)
	print "#{$w}#{$r}Last_name          : #{$y}" ; pp sox['last_name']
sleep (0.1)
	print "#{$w}#{$r}gender             : #{$y}" ; pp sox['gender']
sleep (0.1)
	print "#{$w}#{$r}Verified           : #{$y}" ; pp sox['verified']
sleep (0.1)
	print "#{$w}#{$r}Mobile_phone       : #{$y}" ; pp sox['mobile_phone']
sleep (0.1)
	print "#{$w}#{$r}Updated_time       : #{$y}" ; pp sox['updated_time']
sleep (0.1)
	print "#{$w}#{$r}Timezone           : #{$y}" ; pp sox['timezone']
sleep (0.1)
	print "#{$w}#{$r}Published_timeline : #{$y}" ; pp sox['published_timeline']
sleep (0.1)
	print "#{$w}#{$r}Hometown           : #{$y}" ; pp sox['hometown']
sleep (0.1)
	print "#{$w}#{$r}Locale             : #{$y}" ; pp sox['locale']
sleep (0.1)
	print "#{$w}#{$r}Religion           : #{$y}" ; pp sox['religion']
sleep (0.1)
	print "#{$w}#{$r}Location           : #{$y}" ; pp sox['location']
sleep (0.1)
	print "#{$w}#{$r}School	            : #{$y}" ; pp sox['school']
	else
	puts "#{$a}try again !!!#{$w}"
	end
end
