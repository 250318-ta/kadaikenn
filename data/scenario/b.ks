[_tb_system_call storage=system/_b.ks]

[tb_start_text mode=1 ]
新しいシナリオです[p]
[_tb_end_text]

*s

[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="room.jpg"  ]
[chara_show  name="さとし"  time="1000"  wait="true"  storage="chara/1/あ.png"  width="380"  height="600"  left="80"  top="20"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
今日から大学生！一人暮らしは少し不安だけど頑張るぞ～[p]
[_tb_end_text]

[tb_start_text mode=1 ]
じゃーさっそく始めよう[p]
[_tb_end_text]

[tb_start_text mode=1 ]
一人暮らしスタート！仕送りと奨学金が入金された![p]
(右上にに表示されるよ）[p]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.money = 200000"]
[eval exp="f.happy = 50"]
[ptext layer="0" name="status" text="&'幸福度：' + f.happy + 'pt'" x="600" y="20" size="20" color="pink"]
[ptext layer="0" name="status" text="&'所持金：' + f.money + '円'" x="750" y="20" size="20" color="yellow"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
しかし、家賃・教材費・日用品の購入で一気にお金が引かれた！[p]
[_tb_end_text]

[tb_start_tyrano_code]
[ptext layer="0" name="effect" text="（幸福度 ±0pt）" x="600" y="45" size="18" color="cyan"]
[ptext layer="0" name="effect" text="（確定出費 -120,000円）" x="750" y="45" size="18" color="red"]
[eval exp="f.money = f.money - 120000"]
[wait time="2000"]
[free name="effect" layer="0"]
[free name="status" layer="0"]
[ptext layer="0" name="status" text="&'幸福度：' + f.happy + 'pt'" x="600" y="20" size="20" color="pink"]
[ptext layer="0" name="status" text="&'所持金：' + f.money + '円'" x="750" y="20" size="20" color="yellow"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
部屋に置く家具はどうやって揃えよう？[p]

[_tb_end_text]

[tb_start_tyrano_code]
[glink color="blue" text="新品で揃える（120,000円）" target="*kagu_new" x="300" y="150"]
[glink color="blue" text="必要最低限だけ揃える（80,000円）" target="*kagu_min" x="300" y="230"]
[glink color="blue" text="中古で揃える（60,000円）" target="*kagu_old" x="300" y="310"]
[s]

*kagu_new
[ptext layer="0" name="effect" text="（幸福度 +25pt）" x="600" y="45" size="18" color="cyan"]
[ptext layer="0" name="effect" text="（所持金 -120,000円）" x="750" y="45" size="18" color="red"]
[eval exp="f.money = f.money - 120000"]
[eval exp="f.happy = f.happy + 25"]
[jump target="*kagu_end"]

*kagu_min
[ptext layer="0" name="effect" text="（幸福度 +10pt）" x="600" y="45" size="18" color="cyan"]
[ptext layer="0" name="effect" text="（所持金 -80,000円）" x="750" y="45" size="18" color="red"]
[eval exp="f.money = f.money - 80000"]
[eval exp="f.happy = f.happy + 10"]
[jump target="*kagu_end"]

*kagu_old
[ptext layer="0" name="effect" text="（幸福度 +0pt）" x="600" y="45" size="18" color="cyan"]
[ptext layer="0" name="effect" text="（所持金 -60,000円）" x="750" y="45" size="18" color="red"]
[eval exp="f.money = f.money - 60000"]
[jump target="*kagu_end"]

*kagu_end
; --- 幸福度100上限チェック ---
[if exp="f.happy > 100"]
[eval exp="f.happy = 100"]
[endif]

[wait time="2000"]
[free name="effect" layer="0"]
[free name="status" layer="0"]

[ptext layer="0" name="status" text="&'幸福度：' + f.happy + 'pt'" x="600" y="20" size="20" color="pink"]
[ptext layer="0" name="status" text="&'所持金：' + f.money + '円'" x="750" y="20" size="20" color="yellow"]
[_tb_end_tyrano_code]

[jump  storage="ga.ks"  target=""  ]
[cm  ]
