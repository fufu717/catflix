# アプリケーション概要: 猫専門の動画投稿サイト
URL https://catflix-30483.herokuapp.com

## テスト用アカウント    
email:aa@aa  
password:a111111  
                 
## 利用方法  
トップページのログインボタンからログイン後、ヘッダーのユーザー名のプルダウンメニューより、飼い猫の登録ができます。その後、トップページの動画投稿ボタンより動画投稿ができます。
マイページでは自身の投稿一覧の表示ができます。利用後はログアウトをお願い致します。
         
## 目指した課題解決   
動画投稿サイトは多数ありますが、ジャンルを絞ったサイトは少なく、猫好きの人々の交流の場になればと思い作成しました。

## 洗い出した要件	
### ユーザー登録機能  
・ユーザーを新しく登録できる  
・ユーザー登録が完了している場合ログインができる  
・ログアウトができる  
[![Image from Gyazo](https://i.gyazo.com/a6a2152f33d7fcee6622b44cca0eafcd.gif)](https://gyazo.com/a6a2152f33d7fcee6622b44cca0eafcd)
### 猫登録機能  
・ログイン済みのユーザーは自分の猫の情報を複数登録できる。  
[![Image from Gyazo](https://i.gyazo.com/082f9cafc26836a0caa24d6b23fe6ac4.gif)](https://gyazo.com/082f9cafc26836a0caa24d6b23fe6ac4)
### 動画投稿機能  
・テキストと動画を投稿することができる。  
・動画には登録済みの猫の情報を紐づけることができる。  
・ユーザーは自身の投稿情報を編集、削除することができる。  
・投稿された動画はトップページと、マイページにて一覧表示される。
[![Image from Gyazo](https://i.gyazo.com/e459ee1417986dd71fc2df9704987d8c.gif)](https://gyazo.com/e459ee1417986dd71fc2df9704987d8c)

## 実装予定の機能  
### コメント機能  
・ログイン済みのユーザーは、動画にコメントをすることができる。  
・自身のコメントは削除することができる。  
### お気に入り機能
・動画のお気に入りボタンより、お気に入り登録ができる。  
・お気に入り登録した動画は、お気に入りページより閲覧可能。  
### 検索機能  
・ユーザー名から動画検索が可能。  
・猫の名前から動画検索が可能。  
・猫の種類から動画検索が可能。  
## データベース設計	
[![Image from Gyazo](https://i.gyazo.com/6d6ea9320a1f6c7e1d5ae5fc83ee71ca.png)](https://gyazo.com/6d6ea9320a1f6c7e1d5ae5fc83ee71ca)

## ローカルでの動作方法
`git clone https://github.com/fufu717/catflix.git`  
開発環境：Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code
