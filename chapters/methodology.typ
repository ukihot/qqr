// 読者が同じ研究を反復できるように再現性をもたせる
// 過去時制
= Experimental Methods
== Policy
カバディの勝敗は得失点差で決まる。
つまり、勝敗を決定する因子は試合中に獲得した点数のみであり、それ以外に存在しない。

点数$x$ は以下の通り算出される。
$ x = v * N $
$v$ は得点率、$N$ はレイド回数とアンティ回数の合計である。
さらに、カバディは競技の特性上、守りでも得点が入るスポーツのため、この式は以下のように変形できる。
$ x = v_r * N_r + v_a * N_a $

レイド得点率$v_r$ は敵アンティの数、または試合経過時間に応じた得点率など、状況に応じた様々な指標に細分化できる。アンティ得点率$v_a$ も同様に味方アンティの数、または試合経過時間に応じた得点率など、状況に応じた様々な指標に細分化できる。

== Stats Data Collection
1 回のレイドで記録できる情報（以下、パラメータと呼ぶ）を以下に示す。

#table(
  columns: 4,
  inset: 6.49pt,
  align: horizon,
  [*\#*], [*Parameters*], [*Type*],[*Note*],
  [1],
  [Raider],
  [Object],
  [
    背番号、体重、身長、年齢
  ],
  [2],
  [Points For],
  [Integer],
  [
    得点
  ],
  [3],
  [Points Against],
  [Integer],
  [
    失点
  ],
  [4],
  [Empty Counts],
  [Integer],
  [
    エンプティレイドのカウント
  ],
  [5],
  [Duration],
  [Time],
  [
    レイドで消費した時間
  ],
  [6],
  [Anties],
  [Object],
  [
    敵対したアンティの情報（背番号、体重、身長、年齢）
  ],
  [7],
  [Trick],
  [Text],
  [
    決まり手
  ],
  [8],
  [Opportunity],
  [Integer],
  [
    同レイダーのレイド回数
  ],
  [9],
  [Bonus],
  [Boolean],
  [
    ボーナスポイントの有無
  ]
)

== Analysis
=== Point Rate
$  v_r = sum_(i=1)^7 (p_r_i + b_i + r_i) / N_r_i $
ここで、$N_r_i$ は敵アンティが$i$ 人のときのレイド回数、$p_r_i$が敵アンティが$i$ 人のときの得点、$b$がボーナスポイント、$r$がローナポイントである。
