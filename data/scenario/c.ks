[_tb_system_call storage=system/_c.ks]

[tb_eval  exp="f.money+=1000"  name="money"  cmd="+="  op="t"  val="1000"  val_2="undefined"  ]
[tb_start_tyrano_code]
[ptext layer="0" text="&f.money" x="100" y="100" size="30" color="yellow" overwrite="true"]
; --- 変化量を画面に出す ---
[ptext layer="0" name="effect" text="所持金 -1,000円！" x="350" y="250" size="36" color="red"]
[ptext layer="0" name="effect" text="幸福度 +10pt！" x="370" y="300" size="36" color="cyan"]

; --- 1.5秒待つ ---
[wait time="1500"]

; --- 変化量の表示だけを消す ---
[free name="effect" layer="0"]
[_tb_end_tyrano_code]

[bg  time="1000"  method="crossfade"  storage="room.jpg"  ]
[tb_start_text mode=1 ]
新しいシナリオです[p]
[_tb_end_text]

*v

[chara_hide_all  time="0"  wait="true"  ]
