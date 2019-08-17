# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Manufacture.create(
	[
		{manufacture: "未選択"},{manufacture: "トヨタ"},{manufacture: "日産"},{manufacture: "レクサス"},
		{manufacture: "インフィニティ"},{manufacture: "ホンダ"},{manufacture: "アキュラ"},{manufacture: "マツダ"},
		{manufacture: "メルセデス"},{manufacture: "BMW"},{manufacture: "ポルシェ"},{manufacture: "ロールスロイス"},
		{manufacture: "ジャガー"},{manufacture: "ベントレー"},{manufacture: "クライスラー"},{manufacture: "キャデラック"},{manufacture: "その他"}
	]
)

CarModel.create(
	[
		{car_model: "未選択"},{car_model: "セルシオ"},{car_model: "クラウン"},{car_model: "マジェスタ"},{car_model: "アリスト"},{car_model: "センチュリー"},{car_model: "ソアラ"},{car_model: "マークII"},{car_model: "チェイサー"},
		{car_model: "シーマ"},{car_model: "セドリック"},{car_model: "グロリア"},{car_model: "フーガ"},{car_model: "ローレル"},
		{car_model: "LS"},{car_model: "GS"},{car_model: "IS"},{car_model: "LC"},
		{car_model: "Q45"},{car_model: "M45"},{car_model: "M37"},{car_model: "M57"},{car_model: "Q70"},
		{car_model: "レジェンド"},
		{car_model: "RL"},
		{car_model: "センティア"},
		{car_model: "Sクラス"},{car_model: "Eクラス"},
		{car_model: "7シリーズ"},{car_model: "５シリーズ"},
		{car_model: "パラメーラ"},
		{car_model: "ファントム"},{car_model: "ゴースト"},
		{car_model: "XJ"},
		{car_model: "フライングスパー"},{car_model: "ミュルザンヌ"},{car_model: "コンチネンタルGT"},
		{car_model: "300"},{car_model: "300C"},
		{car_model: "CT6"},{car_model: "デビル"},
		{car_model: "その他"}
	]
)

CarYear.create(
	[
		{car_year: "1986"},{car_year: "1987"},{car_year: "1988"},{car_year: "1989"},{car_year: "1990"},{car_year: "1991"},{car_year: "1992"},
		{car_year: "1993"},{car_year: "1994"},{car_year: "1995"},{car_year: "1996"},{car_year: "1997"},{car_year: "1998"},{car_year: "1999"},
		{car_year: "2000"},{car_year: "2001"},{car_year: "2002"},{car_year: "2003"},{car_year: "2004"},{car_year: "2005"},{car_year: "2006"},
		{car_year: "2007"},{car_year: "2008"},{car_year: "2009"},{car_year: "2010"},{car_year: "2011"},{car_year: "2012"},{car_year: "2013"},
		{car_year: "2014"},{car_year: "2015"},{car_year: "2016"},{car_year: "2017"},{car_year: "2018"},{car_year: "2019"},{car_year: "2020"}
	]
)



