# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version  _6.0.0_

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#テーブル設計

## users テーブル

| column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | strings| null: false |

## posts テーブル

| column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| user_id              | references | null: false, foreign_key: true |
| symptoms_id          | integer    | null: false                    |
| oneset_time_id       | integer    | null: false                    |
| contact_id           | integer    | null: false                    |
| advice_id            | integer    | null: false                    |
| child_age            | string     | null: false                    |
| enrollment_status-id | integer    | null: false                    | 
| text                 | text       | null: false                    |

## comments テーブル

| column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| post_id | references | null: false, foreign_key: true |
| comment | text       | null: false                    |





