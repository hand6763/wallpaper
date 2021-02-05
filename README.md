# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション

壁紙リフォームサイト

# アプリケーション概要

壁紙張り替えの簡易料金見積もりと訪問見積もりの申請ができるアプリケーション

# URL


# 利用方法

Topページから簡単見積もりボタンをクリックすると簡単見積もりページに遷移する。必要な情報を入力し、見積もりボタンを押すと見積もり金額が表示される。

訪問見積もりボタンを押すと問い合わせフォームに遷移し、必要情報を入力すると訪問見積もりの申請ができる。

# 目指した課題解決

壁紙張り替えの仕事をしている友人が仲介業者を挟まず、個人で仕事を受注できる仕組みを作りたかった。

利用者側も壁紙の張り替えというと高額のイメージがあるので、仲介業者がいないことで通常よりも安価で張り替えできる仕組みを作りたかった。

# 洗い出した要件

| 優先順位  | 機能   | 目的 | 詳細 |
| -------- | ------ | --- | ----- |  
| 3 | 訪問見積もり申し込み機能 | 訪問見積もりの申し込みができるようにすること | 詳細な見積もり金額を算出するために訪問見積もりの申し込みができるようにする |
| 2 | 簡単見積もり機能 | 簡単に（3分程度で）見積もりができるようにすること | 家の間取りやリフォーム内容を入力すると大体の見積もり金額が出せるようにする |
| 1 | Twitter,instagramへの遷移機能 | Twitterやinstagramからも申し込みができるようにすること | "若者向けにTwitterやinstagramのDMのやり取りで申し込みできるようにする
Twitter等に作業写真等を載せることで信頼度が増す。 |

# 実装した機能

## 訪問見積もり機能

入力フォームの内容にバリデーションをつけたことで間違った情報だと入力できないようにした。

## 簡単見積もり機能

入力フォームの可能なところはカテゴリー選択方式にすることで使用者の入力の手間を少なくした

# 実装予定の機能

Twitter,instagramへのリンク機能は現代の流行を考えると実装したい

# データベース設計

## adresses テーブル

| Column        | Type       | Options           |
| ------        | ------     | -----------       |
| email         | string     | null: false       |
| postal_code   | string     | null: false       |
| prefecture_id | integer    | null: false       |
| municipality  | string     | null: false       |
| address       | string     | null: false       |
| building_name | string     |                   |
| phone_number  | string     | null: false       |


## estimation テーブル

| Column     | Type    | Options     |
| --------   | ------  | ----------- |
| room       | string  | null: false |
| wide       | string  | null: false |
| height     | string  | null: false |
| ceiling_id | integer | null: false |
| grade_id   | integer | null: false |


# ローカルでの動作方法

