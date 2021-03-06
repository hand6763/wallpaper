# README


# アプリケーション

壁紙リフォームサイト

# アプリケーション概要

壁紙張り替えの簡易料金見積もりと訪問見積もりの申請ができるアプリケーション
このアプリケーションは友人に使ってもらう予定で作成しているので、プライバシーの関係上、金額、Twitterリンク等はテスト用の物を使用している。

# URL
https://wallpaper29.herokuapp.com/

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
| 1 | Twitter,Instagramへの遷移機能 | Twitterやinstagramからも申し込みができるようにすること | 若者向けにTwitterやinstagramのDMのやり取りで申し込みできるようにするTwitter等に作業写真等を載せることで信頼度が増す。 |
| 1 | Gmaiリンク機能 | 訪問見積もりの申請がされた時に見逃さないようにすること | 訪問見積もりが申請されるとGmailに入力されたことが内容が自動転送されること |

# 実装した機能

## 訪問見積もり機能

入力フォームの内容にバリデーションをつけ、エラー表記されるようにしたことで間違った情報だと入力できないようにした。

## 簡単見積もり機能

入力フォームの可能なところはカテゴリー選択方式にすることで使用者の入力の手間を少なくした

# 実装予定の機能

## Twitter,Instagramリンク機能
Twitter,Instagramへのリンク機能は現代の流行を考えると実装したい

# データベース設計

## adresses テーブル

| Column        | Type       | Options           |
| ------        | ------     | -----------       |
| name          | string     | null: false       |
| email         | string     | null: false       |
| postal_code   | string     | null: false       |
| prefecture    | string     | null: false       |
| municipality  | string     | null: false       |
| house_number  | string     | null: false       |
| building_name | string     |                   |
| phone_number  | string     | null: false       |
| request       | text       |                   |


## estimation テーブル

| Column     | Type    | Options     |
| --------   | ------  | ----------- |
| wide_id    | integer | null: false |
| ceiling_id | integer | null: false |
| grade_id   | integer | null: false |


# ローカルでの動作方法

