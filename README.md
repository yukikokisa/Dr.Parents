<img width="1316" alt="投稿一覧" src="">

<img width="1316" alt="投稿一覧" src="f">

<h2 align="center">Dr.Parents</h2>

<p align="center">
  <a href="nurse"><img width="150" alt="スクリーンショット 2021-01-30 18 06 00" src="https://user-images.githubusercontent.com/70472160/106352372-e0b79700-6325-11eb-9d1e-6a3b78e208ce.png" width="40px"></a>
  <br>
  <a href="https://jp.heroku.com/"><img src="https://user-images.githubusercontent.com/70472160/106450392-78ed8180-64c8-11eb-9ac9-28bb0553c837.png" height="70px;" /></a>
  <a href="https://www.ruby-lang.org/ja/"><img src="https://user-images.githubusercontent.com/70472160/106448554-4478c600-64c6-11eb-84af-c4061098de34.jpg" height="70px;" /></a>
  <a href="https://railsguides.jp/getting_started.html"><img src="https://user-images.githubusercontent.com/70472160/106448561-4773b680-64c6-11eb-8a1a-1f7c8777659e.png" height="70px;" /></a>
  <a href="https://railsguides.jp/getting_started.html"><img src="https://user-images.githubusercontent.com/70472160/107140863-7e374a00-6968-11eb-8b82-2082e2e1a60e.png" width="150px;" /></a>
  <a href=""><img src="https://user-images.githubusercontent.com/70472160/108345722-f67ff400-7221-11eb-9045-3e566308f50a.png" width="150px;" /></a>
  <a href=""><img src="https://user-images.githubusercontent.com/70472160/108346182-7908b380-7222-11eb-80fc-8751a9323592.jpeg" width="150px;" /></a>
</p>

## Dr.parents
「こども」の「病気や怪我に関する投稿」アプリケーション

## App URL
   https://dr-parents.herokuapp.com/

   ログイン情報（テスト用）<br>
   ＜ID/Pass＞<br>
     ・ID: admin<br>
     ・Pass: 2222<br>
   ＜患者用＞<br>
     ・<br>
     ・<br>
   ＜看護師用＞<br>
     ・<br>
     ・<br>

## 制作背景
私は看護師として、小児救急の電話相談業務をしています。<br>
多くの病気や怪我の相談が来ますが、相談内容には同じ悩みや不安がある。<br>
医療職からのアドバイス内容を載せたこのアプリを利用すれば、保護者様同士で病気への知識が深めることができます。<br>
また、医療機関や小児救急電話相談を利用する前に、不安を低減するツールが一つ増えることは<br>
子育てをしてきた自身でも感じますが、安心へと繋がります<br>
保護者様が安心して子どもの病気に向き合えるように、そして繋がりが広がる様にと作成しました。<br>


## 工夫したポイント


## 使用技術（開発環境）

### バックエンド
Ruby, Ruby on Rails

### データーベース
MySQL, Sequel Pro

### インフラ
heroku

### ソース管理
Github, GithubDesktop

### テスト
RSpec

### エディタ
VScode

## 課題や今度実装したい機能
<li>トップページに症状別カテゴリー掲載</li>

## テーブル設計

## users テーブル

| column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname     | string | null: false |
| email    | string | null: false |
| password | strings| null: false |

### Association
 - has_many :comments
 - has_many :posts

## posts テーブル

| column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| user_id              | references | null: false, foreign_key: true |
| symptoms_id          | integer    | null: false                    |
| oneset_time_id       | integer    | null: false                    |
| contact_id           | integer    | null: false                    |
| advice_id            | integer    | null: false                    |
| child_age            | string     | null: false                    |
| enrollment_status_id | integer    | null: false                    | 
| text                 | text       |                                |

### Association
 - belongs_to :user
 - has_many :comments

## comments テーブル

| column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| post_id | references | null: false, foreign_key: true |
| comment | text       | null: false                    |

### Association
 - belongs_to :user
 - belongs_to :post




