#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-

require 'user_stream'
require 'twitter'
require 'pp'

consumer_key = ENV['CONSUMER_KEY01']
consumer_secret = ENV['CONSUMER_SECRET01']
oauth_token = ENV['OAUTH_TOKEN01']
oauth_token_secret = ENV['OAUTH_TOKEN_SECRET01']

UserStream.configure do |config|
  config.consumer_key = consumer_key
  config.consumer_secret = consumer_secret
  config.oauth_token = oauth_token
  config.oauth_token_secret = oauth_token_secret
end

Twitter.configure do |config|
  config.consumer_key = consumer_key
  config.consumer_secret = consumer_secret
  config.oauth_token = oauth_token
  config.oauth_token_secret = oauth_token_secret
end

client = UserStream.client

def reply tweet , str

  day = Time.now
#  return if day.hour < 20

  # tweet に対してリプライする
  return if tweet.user.screen_name == "imadesyo_bot" or tweet.user.screen_name == "imadesyo_bot3" or tweet.user.screen_name == "imadesyo_bot2" or tweet.user.screen_name == "imadesyo_bot4"  or tweet.user.screen_name == "arieeeeeeeel"  or tweet.user.screen_name == "_imadesyo" or tweet.user.screen_name == "WhendoyouDoit"

  p tweet.text
  if tweet.text.include?('どこ') then
    str="居間でしょ！！"
  end

  if tweet.text.include?('いつヤル') or tweet.text.include?('いつヤる') then
    str="リア充爆発！！"
  end

  if tweet.text.include?('いつ買う') then
    str="今でしょ！"
  end

  if tweet.text.include?('どこでヤル') or tweet.text.include?('どこでヤる') then
    str="居間で・・・しよう・・・///"
  end

  if tweet.text.include?('@imadesyo_bot じゃ') then
    str="今でしょ！！やって、今すぐやって！！"
  end

  if tweet.text.include?('のど飴') then
    str="イーマでしょ！！"
  end

  if tweet.text.include?('@imadesyo_bot 今でしょ！！') or tweet.text.include?('@imadesyo_bot 今でしょ！') then
    str="えっ？"
  end

  if tweet.text.include?('チェス') then
    str="暇でしょ？"
  end

  if tweet.text.include?('寝る') then
    str="今でしょ！！おやすみなさい。"
  end

  if tweet.text.include?('起きるか') then
    str="今でしょ！！おはようございます。"
  end

  if tweet.text.include?('@imadesyo_bot じゃいつやる') or tweet.text.include?('@imadesyo_bot じゃあいつやる') then
    str="今でしょ！！やって、今すぐやって！！"
  end

  if tweet.text.include?('@imadesyo_bot じゃいつ行く') or tweet.text.include?('@imadesyo_bot じゃあいつ行く') then
    str="今でしょ！？"
  end

  if tweet.text.include?('@imadesyo_bot じゃいつヤ') or tweet.text.include?('@imadesyo_bot じゃあいつヤ') then
    str="リア充爆発しろおおおおおおおおおおおおおおおおお！！"
  end

  if tweet.text.include?('@imadesyo_bot じゃどこでやる') or tweet.text.include?('@imadesyo_bot じゃあどこでやる')then
    str="居間でしょ！！今すぐ向かって！！"
  end

  if tweet.text.include?('@imadesyo_bot じゃどこでヤ') or tweet.text.include?('@imadesyo_bot じゃあどこでヤ')then
    str="///"
  end

  if tweet.text.include?('@imadesyo_bot じゃいつ殴る') or tweet.text.include?('@imadesyo_bot じゃあいつ殴る') then
    str="今でしょ！！おまわりさんこいつです。つ@#{tweet.user.screen_name}"
  end

  if tweet.text.include?('RT @imadesyo_bot:') then
    str="RTなんかする暇あったらやって。今すぐやって。"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('リア充爆発！！') then
    str="リア充は黙って。"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('リア充は黙って。') then
    str="ホント黙ってください。お願います。"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('ホント黙ってください。お願います。') then
    str="　"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('RTなんかする暇あったらやって。今すぐやって。') then
    str="え、同じ事を２度も言わせるの？"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('え、同じ事を２度も言わせるの？') then
    str="え、同じ事を３度も言わせるの？"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('え、同じ事を３度も言わせるの？') then
    str="じゃあいつやるの？"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('じゃあいつやるの？') then
    str="そこは「今でしょ！！」でしょ。。。"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('そこは「今でしょ！！」でしょ。。。') then
    str="今更言われても。。。"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('じゃあいつやるの？') and tweet.text.include?('今でしょ') then
    str="暇なんですね。"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('暇なんですね。') then
    str="暇なんですね。　"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('暇なんですね。　') then
    str="暇なんですね。｡oO(この人しつこいなぁ)"
  end

  if tweet.text.include?('死ね') then
    str="じゃいつ死ぬか？"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('じゃいつ死ぬか？') and tweet.text.include?('今でしょ！！') then
    str="命を粗末にしない！！"
  end

  if tweet.text.include?('今でしょbot') or tweet.text.include?('今でしょBot') then
    str="呼びました？"
  end

  if tweet.text.include?('垢消せ') then
    str="すいません。"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('すいません') then
    str="本当に申し訳ありません。"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('本当に申し訳ありません。') then
    str="本当に申し訳ありません。　"
  end

  if tweet.text.include?('RT @imadesyo_bot:') and tweet.text.include?('本当に申し訳ありません。　') then
    str="本当に申し訳ありません。｡oO(しつこいなぁ)"
  end
  option = {"in_reply_to_status_id"=>tweet.id}
  msg = "@#{tweet.user.screen_name} #{str}"




  if tweet.text.include?('いつやる') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今でしょ！！"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('いつ買う') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今でしょ！"
    msg = "@#{uname} #{str}"
  end


  if tweet.text.include?('いつ告白する') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今行かないでいつ行く！？今でしょ！！"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('のど飴') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="イーマでしょ！！"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('寝るか') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今でしょ！！おやすみなさい。"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('起きるか') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今でしょ！！おはようございます。"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('どこでやる') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="居間でしょ！"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('殴る') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今でしょ！！(+`･д･)≡○)ﾟд｡)ﾉ"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('いつ行く') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今でしょ!!"
    msg = "@#{uname} #{str}"
  end

  if tweet.user.screen_name == "Mr_BUSHIDO1031" or tweet.text.include?('Mr_BUSHIDO1031') then
    if rand(100) < 2
      str = "貴様は寝てろ！！！ファイナルゲッタートマホゥゥゥゥゥック！！！！"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "この！俺の！トマホゥゥゥゥゥックが！お前に！受け止め！きれるかァァァァァァァ！！！"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "俺の一言一言含蓄有るありがたいお言葉だからな"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "ハゲクソ死ね"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "永遠に貴様の時を止めてやろう！ザ・ワールド！！！"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 8
      str = "貴様の辿る未来を全てデジャヴにしてやるぜ！！ゴールドエクスペリエンス・レクイエム！！！！"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 10
      str = "粕は黙って"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
  end

  if tweet.text.include?('粕は黙って') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="ファイナルゲッタァァァァァァァァァァァァトマホゥゥゥゥゥゥゥゥゥゥゥゥゥック！！！！！！！"
    msg = "@#{uname} #{str}"
  end

  p msg



  # duplicate とかすると落ちちゃうので、begin-rescue-end でゴリ押し。
  begin
  Twitter.update msg,option
  p msg
  rescue
  end
end

def post client
  begin
    # filter.json 使ってみる
    client.endpoint = 'https://stream.twitter.com/'
    client.post('/1.1/statuses/filter.json', track: "@Mr_BUSHIDO1031 粕は黙って,じゃあいつやるか？,じゃいつやるか？") do |status|
      reply status,"今でしょ！！"
    end
  rescue => ex
    puts ex.class
  rescue Timeout::Error => ex
    puts ex.class
  end
end 


i=0
loop {
  t0 = Time.now
  post client  
  t1 = Time.now
  diff = t1 - t0
  puts "Timeout! #{t1} , #{diff} i=#{i}"
  mdiff = 60 - diff
  if  mdiff > 0 then
    sleep mdiff
    puts "SleepTime: #{60-diff}"
  end
  i+=1
}
