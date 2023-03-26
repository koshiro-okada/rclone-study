# Rclone学習

## コンテナ一覧

- SFTP接続先コンテナ
    - OS: CentOS Stream 8
- S3コンテナ
    - 未対応
- Rcloneコンテナ
    - OS: CentOS Stream 8
    - rcloneコマンド使用可能

## 実現したいこと

- [x] Rcloneを通じて対象のファイルがサーバに存在するか確認することができる
- [ ] Rcloneを通じてサーバからS3にファイルコピーをすることができる

## 備考

### サーバへの接続方式

- 接続方式はSFTPで公開鍵認証+パスフレーズあり
    - 秘密鍵: プロジェクトルートディレクトリに配置されている`id_rsa`
    - パスフレーズ: `passphrase`
