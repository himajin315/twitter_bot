# -*- coding: utf-8 -*-
#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-

require 'user_stream'
require 'twitter'
require 'pp'

consumer_key = ENV['CONSUMER_KEY04']
consumer_secret = ENV['CONSUMER_SECRET04']
oauth_token = ENV['OAUTH_TOKEN04']
oauth_token_secret = ENV['OAUTH_TOKEN_SECRET04']

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

#  day = Time.now
#  return if day.hour >= 20

  # tweet に対してリプライする
  return if tweet.user.screen_name != "Mr_BUSHIDO1031" and !tweet.text.include?('@Mr_BUSHIDO1031')
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

  if tweet.text.include?('いつ投げるか') then
    str="雑魚は俺のトマホで寝てろ！！！"
  end

  if tweet.text.include?('@imadesyo_bot4 じゃ') then
    str="今でしょ！！やって、今すぐやって！！"
  end

  if tweet.text.include?('のど飴') then
    str="イーマでしょ！！"
  end

  if tweet.text.include?('@imadesyo_bot4 今でしょ！！') or tweet.text.include?('@imadesyo_bot 今でしょ！') then
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

  if tweet.text.include?('@imadesyo_bot4 じゃいつやる') or tweet.text.include?('@imadesyo_bot4 じゃあいつやる') then
    str="今でしょ！！やって、今すぐやって！！"
  end

  if tweet.text.include?('@imadesyo_bot4 じゃいつ行く') or tweet.text.include?('@imadesyo_bot4 じゃあいつ行く') then
    str="今でしょ！？"
  end

  if tweet.text.include?('@imadesyo_bot4 じゃいつヤ') or tweet.text.include?('@imadesyo_bot4 じゃあいつヤ') then
    str="リア充爆発しろおおおおおおおおおおおおおおおおお！！"
  end

  if tweet.text.include?('@imadesyo_bot4 じゃどこでやる') or tweet.text.include?('@imadesyo_bot4 じゃあどこでやる')then
    str="居間でしょ！！今すぐ向かって！！"
  end

  if tweet.text.include?('@imadesyo_bot4 じゃどこでヤ') or tweet.text.include?('@imadesyo_bot4 じゃあどこでヤ')then
    str="///"
  end

  if tweet.text.include?('@imadesyo_bot4 じゃいつ殴る') or tweet.text.include?('@imadesyo_bot4 じゃあいつ殴る') then
    str="今でしょ！！おまわりさんこいつです。つ@#{tweet.user.screen_name}"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') then
    day = Time.now
    rand = day.sec % 37
    case rand
    when 0  then
      str="さっさ反応しろハゲ"
    when 1  then
      str="うるせえええええええええええええええええええええ"
    when 2  then
      str="久しぶりだな。元気してた？"
    when 3  then
      str="お前ェェェェええええええええええええええ生きてたかァァァァァァァァァァァァァァ"
    when 4  then
      str="自慢しかしない俺ｶｺ(・∀・)ｲｲ!!"
    when 5  then
      str="あんまりだァァァァーーーーッ（号泣）"
    when 6  then
      str="ああん？！＜(゜Д゜)＞┌┛┌┛"
    when 7  then
      str="imadesyo_bot4 さんがあなたのツイートについて「死ね！」と言っています。"
    when 8  then
      str="「アアラアッアッアー」"
    when 9  then
      str="盛り上がってきたあああああああああああああああああああああああ"
    when 10  then
      str="( ◞‸◟ )ううう・・・"
    when 11  then
      str="マジ死ねゴミクズが"
    when 12  then
      str="クズは相手にしない。"
    when 13  then
      str="うっせ豚！！黙れ！！！"
    when 14  then
      str="うっせはよ帰れボケ"
    when 15  then
      str="胎盤に帰れ貴様"
    when 16  then
      str="( ◞‸◟ )＜ごめんなさ・・・"
    when 17  then
      str="チッ、戦闘力たったの２か・・・クズがっ"
    when 18  then
      str="ゴメンナサイ( ◞‸◟ )"
    when 19  then
      str="ブチ切れそうだ"
    when 20  then
      str="よかろう、かかってこい・・・"
    when 21  then
      str="無理すんなよ"
    when 22  then
      str="お前が寝てろ！！！！真・八式六四天皇硬牙斬！！！！！！！ "
    when 23  then
      str="トンテンカントンテンカントンテンカントンテンカンハッハァーーー！！！！！"
    when 24  then
      str="しつこい悪辣な言葉しか出ないとか。もっとアツいカッコいい言葉は出ぬのか！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！ "
    when 25  then
      str="なんたる！！"
    when 26  then
      str="ﾄﾏﾎｩｩｩｩｯｸﾌﾞｩｩｩｩﾒﾗｯﾝ"
    when 27  then
      str="残念だけど、オレたちには味方なんていないんだ・・・そう、いないんだよ。味方も、そして・・・敵もね・・・ｽｩｰぁあああああああいしてるんんだぁぁあああきみたちをぉおおおおおぁああははははっはあ↑↑"
    when 28  then
      str=" アハハハハァッ！！ イィ↑じゅ→ぅあん↓！ 盛り↑上がって↑きたねぇ↑↑！（☝ ՞ਊ ՞）☝"
    when 29  then
      str="貴様は水でも食らってろォォォォォォオオオオオオオオ"
    when 30  then
      str="貴様は寝てろ！！！ファイナルゲッタートマホゥゥゥゥゥック！！！！"
    when 31  then
      str="この！俺の！トマホゥゥゥゥゥックが！お前に！受け止め！きれるかァァァァァァァ！！！"
    when 32  then
      str="俺の一言一言含蓄有るありがたいお言葉だからな"
    when 33  then
      str="お前に！！！この！！！！魂がのった一撃を！！！！受けきれるかああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ"
    when 34  then
      str="お前の死に顔拝むまでは俺は絶対倒れない！！"
    when 35  then
      str="安心しろ、俺は貴様の敵ではないさ・・・貴様が俺に絶対服従している限りな！！！ハァーッハッハッハッハッハ！！！！"
    when 36  then
      str="かかってこいやおらああああああああああああああああああああああああああああああああ"
    when 37  then
      str="黙れデブ"
    when 38  then
      str="永遠に貴様の時を止めてやろう！ザ・ワールド！！！"
    end
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('リア充爆発！！') then
    str="リア充は黙って。"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('リア充は黙って。') then
    str="ホント黙ってください。お願います。"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('ホント黙ってください。お願います。') then
    str="　"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('RTなんかする暇あったらやって。今すぐやって。') then
    str="え、同じ事を２度も言わせるの？"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('え、同じ事を２度も言わせるの？') then
    str="え、同じ事を３度も言わせるの？"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('え、同じ事を３度も言わせるの？') then
    str="じゃあいつやるの？"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('じゃあいつやるの？') then
    str="そこは「今でしょ！！」でしょ。。。"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('そこは「今でしょ！！」でしょ。。。') then
    str="今更言われても。。。"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('じゃあいつやるの？') and tweet.text.include?('今でしょ') then
    str="暇なんですね。"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('暇なんですね。') then
    str="暇なんですね。　"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('暇なんですね。　') then
    str="暇なんですね。｡oO(この人しつこいなぁ)"
  end

  if tweet.text.include?('死ね') then
    str="じゃいつ死ぬか？"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('じゃいつ死ぬか？') and tweet.text.include?('今でしょ！！') then
    str="俺は死なん！！！！貴様こそ死ね！！！！！！ファイナルゲッタートマホォォォォォォォオオオオオオオオオク"
  end

  if tweet.text.include?('今でしょbot') or tweet.text.include?('今でしょBot') then
    str="呼びました？"
  end

  if tweet.text.include?('今でしょbot') or tweet.text.include?('今でしょBot') then
    str="呼びました？"
  end

  if tweet.text.include?('ボケ') then
    str="お前がイライラして、俺もイライラして。俺とお前の・・・・喧嘩じゃあ！！！！！！"
  end

  if tweet.text.include?('バカ') then
    str="バカにすんなよてめえええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええええ"
  end

  if tweet.text.include?('天才') then
    str="なんていうか・・・お前・・・死なないかな・・・できるだけ苦しんで・・・・死なないかな・・・・"
  end

  if tweet.text.include?('うざいうざいうざい') then
    str="うざいうざいうざいうざいうざいうざいヤバいお前うざいうざい"
  end

  if tweet.text.include?('ゴールドエクスペリエンス') then
    str="キング・クリムゾン！！！ﾊﾞｧｧｰｰｰﾝ"
  end

  if tweet.text.include?('お前うざい') then
    str="うぜええええええええええ"
  end

  if tweet.text.include?('ぶっ殺すぞ') then
    str="かかってこいやおらああああああああああああああああああああああああああああああああ"
  end

  if tweet.text.include?('何す') or tweet.text.include?('なにすれば') or tweet.text.include?('何を') then
    str="童貞は黙って"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('すいません') then
    str="本当に申し訳ありません。"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('本当に申し訳ありません。') then
    str="本当に申し訳ありません。　"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.include?('本当に申し訳ありません。　') then
    str="本当に申し訳ありません。｡oO(しつこいなぁ)"
  end

  option = {"in_reply_to_status_id"=>tweet.id}
  msg = "@#{tweet.user.screen_name} #{str}"




  if tweet.text.include?('いつやる') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今でしょ！！安心しろ、俺は貴様の敵ではないさ・・・貴様が俺に絶対服従している限りな！！！ハァーッハッハッハッハッハ！！！！"
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
    str="貴様は寝てろ！！！ファイナルゲッタートマホゥゥゥゥゥック！！！！"
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
    str="今でしょ！！この！俺の！トマホゥゥゥゥゥックが！お前に！受け止め！きれるかァァァァァァァ！！！"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('いつ行く') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今でしょ!!"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('いつ飯を') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="今から飯を食べにブシドーさんの家に行ってもいいですか？"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('@Mr_BUSHIDO1031 粕は黙って') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="お前に！！！この！！！！魂がのった一撃を！！！！受けきれるかああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('RT @imadesyo_bot4:') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    day = Time.now
    rand = day.sec % 23
    case rand
    when 0  then
      str="さっさ反応しろハゲ"
    when 1  then
      str="うるせえええええええええええええええええええええ"
    when 2  then
      str="久しぶりだな。元気してた？"
    when 3  then
      str="お前ェェェェええええええええええええええ生きてたかァァァァァァァァァァァァァァ"
    when 4  then
      str="自慢しかしない俺ｶｺ(・∀・)ｲｲ!!"
    when 5  then
      str="あんまりだァァァァーーーーッ（号泣）"
    when 6  then
      str="ああん？！＜(゜Д゜)＞┌┛┌┛"
    when 7  then
      str="imadesyo_bot4 さんがあなたのツイートについて「死ね！」と言っています。"
    when 8  then
      str="「アアラアッアッアー」"
    when 9  then
      str="盛り上がってきたあああああああああああああああああああああああ"
    when 10  then
      str="( ◞‸◟ )ううう・・・"
    when 11  then
      str="マジ死ねゴミクズが"
    when 12  then
      str="クズは相手にしない。"
    when 13  then
      str="うっせ豚！！黙れ！！！"
    when 14  then
      str="うっせはよ帰れボケ"
    when 15  then
      str="胎盤に帰れ貴様"
    when 16  then
      str="( ◞‸◟ )＜ごめんなさ・・・"
    when 17  then
      str="チッ、戦闘力たったの２か・・・クズがっ"
    when 18  then
      str="ゴメンナサイ( ◞‸◟ )"
    when 19  then
      str="ブチ切れそうだ"
    when 20  then
      str="よかろう、かかってこい・・・"
    when 21  then
      str="無理すんなよ"
    when 22  then
      str="お前が寝てろ！！！！真・八式六四天皇硬牙斬！！！！！！！ "
    end
    msg = "@#{uname} #{str}"
  end



  if tweet.user.screen_name == "Mr_BUSHIDO1031" or tweet.text.include?('Mr_BUSHIDO1031') then
    if rand(100) < 2
      str = "貴様に選択肢をやろう。yesかはいか選べ。"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "ツメが甘いんだよ貴様は！！！"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "貴様の動きは見切った！！！"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "子宮に至急帰れ貴様"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "もうこの世にもあの世にも俺以上の・・・いや、俺と並ぶような天才もいないだろう。足元にも及ばないな。"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "天才はいつの世も理解されないものさ・・・"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "え？ちょっと待ってちょっと待ってｗｗｗｗｗお前の口生ゴミみたいな臭いするよｗｗｗｗｗｗｗ"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "どうも、世界を滅ぼすために混沌の闇より生れ出でし魔王です。"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "おいおいおいうざいうざいうざい"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "ハゲクソ死ね"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = ""
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "お前は次に「ﾀﾞﾆｯｰｰｰｰ!!!うぅ・・・あんまりだ・・・(ﾎﾟﾛﾎﾟﾛﾎﾟﾛ…　 あああああんまりだァァァァァァ」という！"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 5
      str = "貴様の辿る未来を全てデジャヴにしてやるぜ！！ゴールドエクスペリエンス・レクイエム！！！！"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
    if rand(100) < 10
      str = "粕は黙って"
      msg = "@Mr_BUSHIDO1031 #{str}"
    end
  end

  if tweet.text.include?('これで最後だ！！') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="ファイナルゲッタァァァァァァァァァァァァトマホゥゥゥゥゥゥゥゥゥゥゥゥゥック！！！！！！！"
    msg = "@#{uname} #{str}"
  end

  if tweet.text.include?('貴様は寝てろ！！') and tweet.text.index("@") == 0 and tweet.text.index("@imadesyo") != 0 then
    len = tweet.text.index(" ")
    uname = tweet.text[1..len-1]
    str="ファイナルゲッタァァァアアアビィィィィィイイイイッム"
    msg = "@#{uname} #{str}"
  end


  # duplicate とかすると落ちちゃうので、begin-rescue-end でゴリ押し。
  begin
  Twitter.update msg,option
  rescue
  end
end


def post client
  begin
    # filter.json 使ってみる
    client.endpoint = 'https://stream.twitter.com/'
    client.post('/1/statuses/filter.json', track: "粕は黙って,貴様は寝てろ！！,じゃあいつ飯を食うか,じゃあいつ飯を食うか？,これで最後だ！！,はぁ？調子に乗らんで。,じゃあいつ投げるか？,じゃいつ投げるか？,じゃいつ投げるか,じゃあいつ投げるかじゃいつ行くか？,じゃあいつ行くか？,じゃいつ行くか,じゃあいつ行くか？じゃいつ起きるか？,じゃあいつ起きるか？,じゃいつ起きるか,じゃあいつ起きるか,じゃいつ寝るか,じゃあいつ寝るか,じゃいつ寝るか？,じゃあいつ寝るか？,じゃいつヤルか,じゃいつヤルか？,じゃあいつヤルか,じゃあいつヤルか？,じゃいつやるか？,じゃいつやるか,じゃあいつやるか？,じゃあいつやるか,じゃどこでやるか？,じゃどこでやるか,じゃあどこでやるか？,じゃあどこでやるか,じゃいつ買うか？,じゃあいつ買うか？,じゃいつ買うか,じゃあいつ買うか,じゃいつ殴るの？,
じゃあいつ殴るの？,じゃいつ殴るの,じゃあいつ殴るの,じゃあいつヤるか,,じゃどこでヤルか？,じゃあどこでヤるか？,じゃあどこでヤるか,じゃどこでヤるか？,じゃどこでヤるか,@imadesyo_bot4:,RT @imadesyo_bot4:,RT @imadesyo_bot4,@imadesyo_bot4 じゃあいつやるか,@imadesyo_bot4 じゃあいつやるか？,@imadesyo_bot4 じゃいつやるか,@imadesyo_bot4 じゃいつやるか？,@imadesyo_bot4 垢消せ,今でしょbot,@imadesyo_bot4 死ね,@imadesyo_bot4 今でしょ！,@imadesyo_bot4 今でしょ！！,じゃあチェスやるか？,じゃチェスやるか？,じゃあチェスやるか,じゃチェスやるか,じゃあいつ告白するの,じゃあいつ告白するの？,じゃいつ告白するの,じゃあいつ告白するの？,つ「のど飴」,つ◎のど飴") do |status|
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

