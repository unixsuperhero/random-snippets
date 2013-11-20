#!/Users/jearsh/.rvm/rubies/ruby-2.0.0-p247/bin/ruby
#require 'rubygems'
#require 'bundler/setup'
require 'open-uri'
require 'nokogiri'


# http://www.gooddrama.net/popular-shows/1

puts '# Popular Japanese Drama on GoodDrama.net'

1.upto(20) do |page|
  doc = open("http://www.gooddrama.net/popular-shows/#{page}")
  html = Nokogiri::HTML(doc)

  nodes = html.css('.right_col')
  nodes.each do |node|
    next if (link = node.css('h3 a')).empty?
    next unless (type = node.css('.type_indic').text.strip) == 'Japanese Drama'

    title = link.text.strip
    href = link.first.attribute 'href'

    puts
    puts "* #{title}"
    puts "  :!open '#{href}'"

  end
end
puts

__END__
# Popular Japanese Drama on GoodDrama.net

* Rich Man, Poor Woman
  :!open 'http://www.gooddrama.net/japanese-drama/rich-man-poor-woman'

* Itazura na Kiss  Love in Tokyo
  :!open 'http://www.gooddrama.net/japanese-drama/itazura-na-kiss-love-in-tokyo'

* Hana Kimi
  :!open 'http://www.gooddrama.net/japanese-drama/hana-kimi'

* Hana Yori Dango
  :!open 'http://www.gooddrama.net/japanese-drama/hana-yori-dango'

* Last Cinderella
  :!open 'http://www.gooddrama.net/japanese-drama/last-cinderella'

* Ouran High School Host Club
  :!open 'http://www.gooddrama.net/japanese-drama/ouran-high-school-host-club'

* Yamada-kun to Nananin no Majo
  :!open 'http://www.gooddrama.net/japanese-drama/yamada-kun-to-nananin-no-majo'

* Hana Yori Dango Season 2
  :!open 'http://www.gooddrama.net/japanese-drama/hana-yori-dango-season-2'

* Priceless
  :!open 'http://www.gooddrama.net/japanese-drama/priceless'

* Summer Nude
  :!open 'http://www.gooddrama.net/japanese-drama/summer-nude'

* Buzzer Beat
  :!open 'http://www.gooddrama.net/japanese-drama/buzzer-beat'

* Gokusen
  :!open 'http://www.gooddrama.net/japanese-drama/gokusen'

* Yamato Nadeshiko Shichi Henge
  :!open 'http://www.gooddrama.net/japanese-drama/yamato-nadeshiko-shichi-henge'

* Kamen Rider Wizard
  :!open 'http://www.gooddrama.net/japanese-drama/kamen-rider-wizard'

* Great Teacher Onizuka 2012
  :!open 'http://www.gooddrama.net/japanese-drama/great-teacher-onizuka-2012'

* 1 Litre of Tears
  :!open 'http://www.gooddrama.net/japanese-drama/1-litre-of-tears'

* My Boss My Hero
  :!open 'http://www.gooddrama.net/japanese-drama/my-boss-my-hero'

* Nodame Cantabile
  :!open 'http://www.gooddrama.net/japanese-drama/nodame-cantabile'

* Nobuta wo Produce
  :!open 'http://www.gooddrama.net/japanese-drama/nobuta-wo-produce'

* Nobunaga no Chef
  :!open 'http://www.gooddrama.net/japanese-drama/nobunaga-no-chef'

* Hanzawa Naoki
  :!open 'http://www.gooddrama.net/japanese-drama/hanzawa-naoki'

* Kagi no Kakatta Heya
  :!open 'http://www.gooddrama.net/japanese-drama/kagi-no-kakatta-heya'

* xxxHOLiC
  :!open 'http://www.gooddrama.net/japanese-drama/xxxholic'

* Maou
  :!open 'http://www.gooddrama.net/japanese-drama/maou'

* Kazoku Game
  :!open 'http://www.gooddrama.net/japanese-drama/kazoku-game'

* Natsu no Koi wa Nijiiro ni Kagayaku
  :!open 'http://www.gooddrama.net/japanese-drama/natsu-no-koi-wa-nijiiro-ni-kagayaku'

* Yae no Sakura
  :!open 'http://www.gooddrama.net/japanese-drama/yae-no-sakura'

* Kimi wa Petto
  :!open 'http://www.gooddrama.net/japanese-drama/kimi-wa-petto'

* Atashinchi no Danshi
  :!open 'http://www.gooddrama.net/japanese-drama/atashinchi-no-danshi'

* Gokusen 2
  :!open 'http://www.gooddrama.net/japanese-drama/gokusen-2'

* Koizora (drama)
  :!open 'http://www.gooddrama.net/japanese-drama/koizora-drama'

* Hero (Japan)
  :!open 'http://www.gooddrama.net/japanese-drama/hero-japan'

* Kaibutsu-kun
  :!open 'http://www.gooddrama.net/japanese-drama/kaibutsu-kun'

* Pride
  :!open 'http://www.gooddrama.net/japanese-drama/pride'

* Kasuka na Kanojo
  :!open 'http://www.gooddrama.net/japanese-drama/kasuka-na-kanojo'

* 35-sai no Koukousei
  :!open 'http://www.gooddrama.net/japanese-drama/35-sai-no-koukousei'

* Galileo 2
  :!open 'http://www.gooddrama.net/japanese-drama/galileo-2'

* Ikemen desu ne
  :!open 'http://www.gooddrama.net/japanese-drama/ikemen-desu-ne'

* Woman
  :!open 'http://www.gooddrama.net/japanese-drama/woman'

* Shiritsu Bakaleya Koukou
  :!open 'http://www.gooddrama.net/japanese-drama/shiritsu-bakaleya-koukou'

* Proposal Daisakusen
  :!open 'http://www.gooddrama.net/japanese-drama/proposal-daisakusen'

* Gokusen 3
  :!open 'http://www.gooddrama.net/japanese-drama/gokusen-3'

* Uta no Onii-san
  :!open 'http://www.gooddrama.net/japanese-drama/uta-no-onii-san'

* Zettai Kareshi
  :!open 'http://www.gooddrama.net/japanese-drama/zettai-kareshi'

* Take Five
  :!open 'http://www.gooddrama.net/japanese-drama/take-five'

* Made in Japan
  :!open 'http://www.gooddrama.net/japanese-drama/made-in-japan'

* Bloody Monday
  :!open 'http://www.gooddrama.net/japanese-drama/bloody-monday'

* Mei-chan no Shitsuji
  :!open 'http://www.gooddrama.net/japanese-drama/mei-chan-no-shitsuji'

* Doubles ~ Futari no Keiji
  :!open 'http://www.gooddrama.net/japanese-drama/doubles-futari-no-keiji'

* Piece
  :!open 'http://www.gooddrama.net/japanese-drama/piece'

* Switch Girl Season 2
  :!open 'http://www.gooddrama.net/japanese-drama/switch-girl-season-2'

* Hotaru no Hikari
  :!open 'http://www.gooddrama.net/japanese-drama/hotaru-no-hikari'

* Lucky Seven
  :!open 'http://www.gooddrama.net/japanese-drama/lucky-seven'

* MR. BRAIN
  :!open 'http://www.gooddrama.net/japanese-drama/mr.-brain'

* Beginners!
  :!open 'http://www.gooddrama.net/japanese-drama/beginners'

* Apoyan - Hashiru Kokusai Kuukou
  :!open 'http://www.gooddrama.net/japanese-drama/apoyan-hashiru-kokusai-kuukou'

* Sprout
  :!open 'http://www.gooddrama.net/japanese-drama/sprout'

* LIMIT
  :!open 'http://www.gooddrama.net/japanese-drama/limit'

* Soratobu Kouhoushitsu
  :!open 'http://www.gooddrama.net/japanese-drama/soratobu-kouhoushitsu'

* Tonbi
  :!open 'http://www.gooddrama.net/japanese-drama/tonbi'

* Mahoro Ekimae Bangaichi
  :!open 'http://www.gooddrama.net/japanese-drama/mahoro-ekimae-bangaichi'

* Misaki Number One!!
  :!open 'http://www.gooddrama.net/japanese-drama/misaki-number-one'

* Tatta Hitotsu no Koi
  :!open 'http://www.gooddrama.net/japanese-drama/tatta-hitotsu-no-koi'

* Yankee-kun to Megane-chan
  :!open 'http://www.gooddrama.net/japanese-drama/yankee-kun-to-megane-chan'

* Vampire Heaven
  :!open 'http://www.gooddrama.net/japanese-drama/vampire-heaven'

* Doctor X
  :!open 'http://www.gooddrama.net/japanese-drama/doctor-x'

* Sennyu Tantei Tokage
  :!open 'http://www.gooddrama.net/japanese-drama/sennyu-tantei-tokage'

* Yamada Taro Monogatari
  :!open 'http://www.gooddrama.net/japanese-drama/yamada-taro-monogatari'

* Tumbling
  :!open 'http://www.gooddrama.net/japanese-drama/tumbling'

* Saikou no Rikon ~ The Great Divorce!
  :!open 'http://www.gooddrama.net/japanese-drama/saikou-no-rikon-the-great-divorce'

* Bad Boys J
  :!open 'http://www.gooddrama.net/japanese-drama/bad-boys-j'

* Iryu Team Medical Dragon
  :!open 'http://www.gooddrama.net/japanese-drama/iryu-team-medical-dragon'

* Otenki Onee-san
  :!open 'http://www.gooddrama.net/japanese-drama/otenki-onee-san'

* Mayonaka no Panya-san
  :!open 'http://www.gooddrama.net/japanese-drama/mayonaka-no-panya-san'

* Kurosagi
  :!open 'http://www.gooddrama.net/japanese-drama/kurosagi'

* Tsuma wa Kunoichi
  :!open 'http://www.gooddrama.net/japanese-drama/tsuma-wa-kunoichi'

* Galileo
  :!open 'http://www.gooddrama.net/japanese-drama/galileo'

* Kogure Shashinkan
  :!open 'http://www.gooddrama.net/japanese-drama/kogure-shashinkan'

* Dinner
  :!open 'http://www.gooddrama.net/japanese-drama/dinner'

* Tsumi to Batsu - A Falsified Romance
  :!open 'http://www.gooddrama.net/japanese-drama/tsumi-to-batsu-a-falsified-romance'

* Liar Game
  :!open 'http://www.gooddrama.net/japanese-drama/liar-game'

* Starman
  :!open 'http://www.gooddrama.net/japanese-drama/starman'

* Osozaki no Himawari
  :!open 'http://www.gooddrama.net/japanese-drama/osozaki-no-himawari'

* Monsters
  :!open 'http://www.gooddrama.net/japanese-drama/monsters'

* Kumo no Kaidan
  :!open 'http://www.gooddrama.net/japanese-drama/kumo-no-kaidan'

* Tokyo Airport
  :!open 'http://www.gooddrama.net/japanese-drama/tokyo-airport'

* Pin to Kona
  :!open 'http://www.gooddrama.net/japanese-drama/pin-to-kona'

* Detarame Hero
  :!open 'http://www.gooddrama.net/japanese-drama/detarame-hero'

* Love Shuffle
  :!open 'http://www.gooddrama.net/japanese-drama/love-shuffle'

* Kamen Rider W
  :!open 'http://www.gooddrama.net/japanese-drama/kamen-rider-w'

* Kamen Rider Fourze
  :!open 'http://www.gooddrama.net/japanese-drama/kamen-rider-fourze'

* Voltasaur Team Kyouryuger
  :!open 'http://www.gooddrama.net/japanese-drama/voltasaur-team-kyouryuger'

* Daini Gakushou
  :!open 'http://www.gooddrama.net/japanese-drama/daini-gakushou'

* Mirai Nikki
  :!open 'http://www.gooddrama.net/japanese-drama/mirai-nikki'

* Garo - The One Who Shines in The Darkness
  :!open 'http://www.gooddrama.net/japanese-drama/garo-the-one-who-shines-in-the-darkness'

* Boku to Star no 99 Nichi
  :!open 'http://www.gooddrama.net/japanese-drama/boku-to-star-no-99-nichi'

* Kaizoku Sentai Goukaiger
  :!open 'http://www.gooddrama.net/japanese-drama/kaizoku-sentai-goukaiger'

* Hotaru no Hikari 2
  :!open 'http://www.gooddrama.net/japanese-drama/hotaru-no-hikari-2'

* Nazotoki wa Dinner no Ato de
  :!open 'http://www.gooddrama.net/japanese-drama/nazotoki-wa-dinner-no-ato-de'

* Bara no Nai Hanaya
  :!open 'http://www.gooddrama.net/japanese-drama/bara-no-nai-hanaya'

* Tokyo DOGS
  :!open 'http://www.gooddrama.net/japanese-drama/tokyo-dogs'

* Tokyo Zenryoku Shoujo
  :!open 'http://www.gooddrama.net/japanese-drama/tokyo-zenryoku-shoujo'

* Goen Hunter
  :!open 'http://www.gooddrama.net/japanese-drama/goen-hunter'

* Share House no Koibito
  :!open 'http://www.gooddrama.net/japanese-drama/share-house-no-koibito'

* Samurai High School
  :!open 'http://www.gooddrama.net/japanese-drama/samurai-high-school'

* Switch Girl!!
  :!open 'http://www.gooddrama.net/japanese-drama/switch-girl'

* Mikeneko Holmes no Suiri
  :!open 'http://www.gooddrama.net/japanese-drama/mikeneko-holmes-no-suiri'

* Bloody Monday Season 2
  :!open 'http://www.gooddrama.net/japanese-drama/bloody-monday-season-2'

* Hungry!
  :!open 'http://www.gooddrama.net/japanese-drama/hungry'

* Majo no Jouken
  :!open 'http://www.gooddrama.net/japanese-drama/majo-no-jouken'

* Asuko March!
  :!open 'http://www.gooddrama.net/japanese-drama/asuko-march'

* Kamisama Mou Sukoshi Dake
  :!open 'http://www.gooddrama.net/japanese-drama/kamisama-mou-sukoshi-dake'

* Last Friends
  :!open 'http://www.gooddrama.net/japanese-drama/last-friends'

* Biblia Koshodou no Jiken Techou
  :!open 'http://www.gooddrama.net/japanese-drama/biblia-koshodou-no-jiken-techou'

* HAMMER SESSION!
  :!open 'http://www.gooddrama.net/japanese-drama/hammer-session'

* Seigi no Mikata
  :!open 'http://www.gooddrama.net/japanese-drama/seigi-no-mikata'

* Dragon Zakura
  :!open 'http://www.gooddrama.net/japanese-drama/dragon-zakura'

* Liar Game Season 2
  :!open 'http://www.gooddrama.net/japanese-drama/liar-game-season-2'

* Engine
  :!open 'http://www.gooddrama.net/japanese-drama/engine'

* Code Blue
  :!open 'http://www.gooddrama.net/japanese-drama/code-blue'

* Karamazov no Kyodai
  :!open 'http://www.gooddrama.net/japanese-drama/karamazov-no-kyodai'

* Great Teacher Onizuka
  :!open 'http://www.gooddrama.net/japanese-drama/great-teacher-onizuka'

* CHANGE
  :!open 'http://www.gooddrama.net/japanese-drama/change'

* Itsuka Hi no Ataru Basho de
  :!open 'http://www.gooddrama.net/japanese-drama/itsuka-hi-no-ataru-basho-de'

* Kaseifu no Mita
  :!open 'http://www.gooddrama.net/japanese-drama/kaseifu-no-mita'

* Taira No Kiyomori
  :!open 'http://www.gooddrama.net/japanese-drama/taira-no-kiyomori'

* Yakou Kanransha
  :!open 'http://www.gooddrama.net/japanese-drama/yakou-kanransha'

* Q10
  :!open 'http://www.gooddrama.net/japanese-drama/q10'

* Orthros no Inu
  :!open 'http://www.gooddrama.net/japanese-drama/orthros-no-inu'

* Long Vacation
  :!open 'http://www.gooddrama.net/japanese-drama/long-vacation'

* Kamo, Kyoto e Iku
  :!open 'http://www.gooddrama.net/japanese-drama/kamo-kyoto-e-iku'

* Good Luck
  :!open 'http://www.gooddrama.net/japanese-drama/good-luck'

* Zenkai Girl
  :!open 'http://www.gooddrama.net/japanese-drama/zenkai-girl'

* A Million Stars Falling From The Sky
  :!open 'http://www.gooddrama.net/japanese-drama/a-million-stars-falling-from-the-sky'

* Attention Please
  :!open 'http://www.gooddrama.net/japanese-drama/attention-please'

* Legal High
  :!open 'http://www.gooddrama.net/japanese-drama/legal-high'

* Ranma 1/2
  :!open 'http://www.gooddrama.net/japanese-drama/ranma-1-2'

* Otomen
  :!open 'http://www.gooddrama.net/japanese-drama/otomen'

* The Hero Yoshihiko And The Key Of Evil Spirits
  :!open 'http://www.gooddrama.net/japanese-drama/the-hero-yoshihiko-and-the-key-of-evil-spirits'

* Sarutobi Sansei
  :!open 'http://www.gooddrama.net/japanese-drama/sarutobi-sansei'

* Tsuki no Koibito
  :!open 'http://www.gooddrama.net/japanese-drama/tsuki-no-koibito'


