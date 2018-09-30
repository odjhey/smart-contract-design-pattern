# Smart Contract design pattern

## はじめに
ブロックチェーンに構築されたスマートコントラクトはその性質上、誰の影響を受けることなく自律的に契約を執行します。そしてその契約が事実であることをコードを通して証明します。

現時点で一番大きな分散型アプリケーションプラットフォームであるEthereumでは様々なプロジェクトが立ち上がり、初学者からエキスパートまで様々なエンジニアが日夜開発に明け暮れています。

主要言語であるSolidityを使うことで誰もが簡単にスマートコントラクトを実装できるのですが、そのクオリティには大きな差があるのは事実で高度なコントラクトを実装できるエンジニアはまだ少ないのではないでしょうか。

経済的に価値のある通貨（トークン）を扱う以上、コードの安全性を求められるのは当然であり、エンジニアはスマートコントラクトの不変な性質や潜在的なセキュリティリスクを理解し、堅牢なコントラクトを実装することが求められています。

## デザインパターンとは？
ここでいうDesignとは見た目のデザインではなく、設計を意味します。つまりDesign patternとは設計の型であり、過去の設計者が課題解決のために生み出した設計をもとに生まれたベストプラクティスのことです。デザインパターンをもとに頻出する課題とそれに対するベストな解決方法を理解することで、危険性を最小限に抑えた堅牢なコントラクトを設計できるだけでなく、デザインパターンで解決できない高度な課題の解決に集中できるようになります。

また、デザインパターンを開発チームの共通言語とすることで、設計や開発クオリティ、スピードの向上や議論の円滑化などが望めます。
詳細はLayerXさんの[こちらの記事](https://medium.com/layerx-jp/smart-contract-design-pattern-34a6401fe743)で紹介されています。

## デザインパターンの紹介
デザインパターンはコントラクトの動作に合わせて5つのカテゴリーに17のパターンに分類することができます。分類方法に関してはこちらの文献を参考にしています。

- [Design Patterns for Smart Contracts in the
Ethereum Ecosystem](https://eprints.cs.univie.ac.at/5665/1/bare_conf.pdf)
- [Smart Contracts: Security Patterns in the Ethereum
Ecosystem and Solidity](https://eprints.cs.univie.ac.at/5433/7/sanerws18iwbosemain-id1-p-380f58e-35576-preprint.pdf)

### Action and Control
典型的な操作タスクのためのメカニズムを提供するグループ。
- [Pull Payment Pattern](https://medium.com/@tomoyaishida/%E5%AE%89%E5%85%A8%E3%81%AA%E3%82%B9%E3%83%9E%E3%83%BC%E3%83%88%E3%82%B3%E3%83%B3%E3%83%88%E3%83%A9%E3%82%AF%E3%83%88%E3%82%92%E6%A7%8B%E7%AF%89%E3%81%99%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AE%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E3%83%91%E3%82%BF%E3%83%BC%E3%83%B3%E5%85%A5%E9%96%80-3fc215a21eb3)
- [State Machine Pattern](https://medium.com/@tomoyaishida/%E5%AE%89%E5%85%A8%E3%81%AA%E3%82%B9%E3%83%9E%E3%83%BC%E3%83%88%E3%82%B3%E3%83%B3%E3%83%88%E3%83%A9%E3%82%AF%E3%83%88%E3%82%92%E6%A7%8B%E7%AF%89%E3%81%99%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AE%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E3%83%91%E3%82%BF%E3%83%BC%E3%83%B3%E5%85%A5%E9%96%80-3fc215a21eb3)
- [Commit and Reveal Pattern](https://medium.com/@tomoyaishida/smart-contract-desing-pattern-2-commit-and-reveal-oracle-3a462806264)
- [Oracle Pattern](https://medium.com/@tomoyaishida/smart-contract-desing-pattern-2-commit-and-reveal-oracle-3a462806264)

### Authorization
スマートコントラクトの関数へのアクセスを制御し、ユーザー権限の実装を単純化する認可制御を提供するグループ。
- Ownership Pattern
- Access Restriction Pattern

### Lifecycle
スマートコントラクトの作成と破壊を提供するグループ
- Mortal Pattern
- Automatic Deprecation Pattern

### Maintenance
不可逆的で不変的性質をもつスマートコントラクトをメンテナンスするためのメカニズムを提供するグループ。
- Data Segregation Pattern
- Satellite Pattern
- Contract Register Pattern
- Content Relay Pattern

### Security
スマートコントラクトの信頼できる実行を保証するためのセキュリティ対策を提供するグループ。
- Checks Effects Interaction Pattern
- Emergency Stop Pattern
- Speed Bump Pattern
- Rate limit Pattern
- Balance Limit Pattern

## 注意点
このコードは専門的な監査を受けていないため100%の安全性を保証することはできません。
記述ミスなどあればご指摘お願い致します。
