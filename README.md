# Nodejs-Dockerfile
Nodejs学習用環境を Docker を使って構築します。  
nodejs + express + mysql による web アプリケーション作成演習用です。


# 使い方

### Docker環境がない場合は下記ページを参考にセットアップ

- Windows へ Docker をセットアップ  
  https://qiita.com/zaki-lknr/items/db99909ba1eb27803456

- ubuntu へ Docker をセットアップ  
  https://github.com/murcubcc110/Ubuntu-Docker/blob/main/README.md

### Docker環境がある場合は

1. docker-compose のインストール  
  https://docs.docker.jp/compose/install.html#linux

1. Dockerfile をダウンロード
   ```bash
   $ mkdir ./nodejs
   $ cd ./nodejs
   $ git init
   $ git clone https://github.com/murcubcc110/Nodejs-Dockerfile.git
   ```

1. イメージをビルド
   ```bash
   $ cd ./Nodejs-Dockerfile
   $ docker-compose build
   ```

1. コンテナ起動
   ```bash
   $ docker-compose up -d
   ```

1. コンテナ接続確認
   ```bash
   # mysql サーバ接続確認
   # mysql> が表示されればOK
   $ docker-compose exec mysql mysql -uroot -ppasswd
   # webserver サーバ接続確認
   $ docker-compose exec webserver bash
   ```


