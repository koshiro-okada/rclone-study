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
    - `make check-file-exist`
- [x] Rcloneを通じてサーバからS3にファイルコピーをすることができる
    - `make copy-file-to-s3` (ファイルをコピー)
    - `make check-if-file-exists-in-s3` (ファイルがS3に存在するか確認)

## 備考

### サーバへの接続方式

- 接続方式はSFTPで公開鍵認証+パスフレーズあり
    - 秘密鍵: プロジェクトルートディレクトリに配置されている`id_rsa`
    - パスフレーズ: `passphrase`

### Rcloneの環境変数

https://rclone.org/sftp/ を参考に環境変数を設定している (`rclone-server/sftp-connection.env`)

- RCLONE_SFTP_HOST
- RCLONE_SFTP_USER
- RCLONE_SFTP_KEY_PEM
    - `awk '{printf "%s\\\\n", $0}' < id_rsa`で改行部分を`\\n`にエスケープしている
- RCLONE_SFTP_KEY_FILE_PASS
    - `rclone obscure "passphrase"`でパスフレーズを隠蔽している

