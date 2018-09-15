## はじめに
ブロックチェーンに構築されたスマートコントラクトはその性質上、誰の影響を受けることなく自律的に契約を執行します。そしてその契約が事実であることをコードを通して証明します。現時点で一番大きな分散型アプリケーションプラットフォームであるEthereumでは様々なプロジェクトが立ち上がり、初学者からエキスパートまで様々なエンジニアが日夜開発に明け暮れています。主要言語であるSolidityを使うことで誰もが簡単にスマートコントラクトを実装できるのですが、そのクオリティには大きな差があるのは事実で高度なコントラクトを実装できるエンジニアはまだ少ないのではないでしょうか。経済的に価値のある通貨（トークン）を扱う以上、コードの安全性を求められるのは当然であり、エンジニアはスマートコントラクトの不変な性質や潜在的なセキュリティリスクを理解し、堅牢なコントラクトを実装することが求められています。

## デザインパターンとは？
ここでいうDesignとは見た目のデザインではなく、設計を意味します。つまりDesign patternとは設計の型であり、過去の設計者が課題解決のために生み出した設計をもとに生まれたベストプラクティスのことです。デザインパターンをもとに頻出する課題とそれに対するベストな解決方法を理解することで、危険性を最小限に抑えた堅牢なコントラクトを設計できるだけでなく、デザインパターンで解決できない高度な課題の解決に集中できるようになります。

また、デザインパターンを開発チームの共通言語とすることで、設計や開発クオリティ、スピードの向上や議論の円滑化などが望めます。
詳細はLayerXさんのこちらの記事で紹介されています。
https://medium.com/layerx-jp/smart-contract-design-pattern-34a6401fe743

## デザインパターンの紹介
デザインパターンはコントラクトの動作に合わせて5つのカテゴリーに17のパターンに分類することができます。分類方法に関してはこちらの文献を参考にしています。
https://eprints.cs.univie.ac.at/5665/1/bare_conf.pdf

1.Action and Controll
典型的な操作タスクのためのメカニズムを提供するグループ。
- Pull Payment Pattern
- State Machine Pattern
- Commit and Reveal Pattern
- Oracle Pattern

2.Authorization
スマートコントラクトの関数へのアクセスを制御し、ユーザー権限の実装を単純化する認可制御を提供するグループ。
- Ownership Pattern
- Access Restriction Pattern

3.Lifecycle
スマートコントラクトの作成と破壊を提供するグループ
- Mortal Pattern
- Automatic Deprecation Pattern

4.Maintenance
不可逆的で不変的性質をもつスマートコントラクトをメンテナンスするためのメカニズムを提供するグループ。
- Data Segregation Pattern
- Satellite Pattern
- Contract Register Pattern
- Content Relay Pattern

5.Security
スマートコントラクトの信頼できる実行を保証するためのセキュリティ対策を提供するグループ。
- Checks Effects Interaction Pattern
- Emergency Stop Pattern
- Speed Bump Pattern
- Rate limit Pattern
- Balance Limit Pattern
