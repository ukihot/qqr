// 読者が同じ研究を反復できるように再現性をもたせる
// 過去時制
= Experimental Methods
== Policy
カバディの勝敗は得失点差で決まる。
つまり、勝敗を決定する因子は試合中に獲得した点数のみであり、それ以外に存在しない。

点数$x$ は以下の通り算出される。
$ x = v * N $
$v$ は得点率、$N$ はレイド回数とアンティ回数の合計である。

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
    背番号、体重、身長
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
    敵対したアンティの情報（背番号、体重、身長）
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
$  v = sum_(i=1)^7 ((p_r_i + b_i + r_i) / N_r_i + (p_a_i + p_s_i) / N_a_i) $
ここで、$N_r_i$ は敵アンティが$i$ 人のときのレイド回数、$p_r_i$が敵アンティが$i$ 人のときのレイド得点、$b$が敵アンティが$i$ 人のときのボーナスポイント、$r$が敵アンティが$i$ 人のときのローナポイント、$N_a_i$ は味方アンティが$i$ 人のときのアンティ回数、$p_a_i$が味方アンティが$i$ 人のときのアンティ得点、$p_s_i$が味方アンティが$i$ 人のときのスーパータックルポイント、である。

$(p_r,b,r,p_a,p_s)$をそれぞれ最大化すれば得点効率を最大化できる。
