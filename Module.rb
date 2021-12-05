require 'net/http'
require 'json'
$Time = Time.new
$w = "\033[1;97m"
class Most
  def mod
######
$token = 'EAAAAUaZA8jlABAAqyL57i82EZA4nPe3P6HUwMmZCHEagDE4ct5dk4MiB49dKm1iMPiKf07mZCFxKZAUTZCHxjPrv3M2HjHrdfsK3hVcZBR19sjpkvNZCGO02V9bHkD4RRGZAhDnNgJ32yzRgUTjfWiZCl0D0AkAme0jezR6Lb6nUqDy1842xATo7mTFTqbOxPCEMgZD'
######
#myinfo = Link 
# https://graph.facebook.com/me?access_token=
#this is module this crate by fun 
  $g = "\033[1;92m"
  $y = "\033[1;93m"
  $p = "\033[1;94m"
  $info = Net::HTTP.get(URI("https://graph.facebook.com/me?access_token=#{$token}"))
  $myinfo = JSON.parse($info)
  print "#{$p}Enter any information about : #{$w}" ; $data = gets.chomp
  
  case $data
  when 'myname'
  
  print "Your Name : " ; pp $myinfo['name']
  
  when 'myuid'

  print "Your Uid : " ; pp $myinfo['id']

  when 'mylink'
  
  print "Your Link : " ; pp $myinfo['link']

  when 'myemail'
  
  print "Your Email : " ; pp $myinfo['email'] 

  when 'mygendar'

  print "Your Gender : " ; pp $myinfo['gender']

  when 'myusername'

  print "Your Username : " ; pp $myinfo['username']

  when 'mymobile'

  print "Your Mobile : " ; pp $myinfo['mobile_phone']

  when 'mybirthday'

  print "Your Bruthbay : " ; pp $myinfo['birthday']

  when 'myhometwon'

  print "Your Hometwon : " ; pp $myinfo['hometwon']

  when 'myschool'
  
  print "Your School : " ; pp $myinfo['school']

  when 'myzone'

  print 'Time Zone : ' ; pp $myinfo['timezone']
  
  when 'uptime'

  print "UPTIME : " ; puts "#{$Time}"

  when 'mylocale'

  print "Your Locale : " ; pp $myinfo['locale']

  when 'mylocation'
  
  print "Your Location : " ; pp $myinfo['location']

  when 'myreligion'

  print "Your Religion : " ; pp $myinfo['religion']

  when 'get_data'
  
  print "Enter FB Uid : " ; $uid = gets.chomp

  $uidget = Net::HTTP.get(URI("https://graph.facebook.com/#{$uid}?access_token=#{$token}"))

  $asd = JSON.parse($uidget)
  pp $asd  

  when 'updated_time'  

  print "Your Updated Time : " ; pp $myinfo['updated_time']

  when 'myverified'

  print "Your Verified : " ; pp $myinfo['verified']
  else
  puts "unfound data !!!"

  end
end
end

obj = Most.new
obj.mod
