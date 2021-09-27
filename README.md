# Init Local by Flywheel

[Local by Flywheel（Local）](https://localwp.com/) で新規作成した WordPress サイトを初期化、日本語化するスクリプトです。

このスクリプトを実行すると下記の設定が行われます。

- サイトの言語を `日本語` に設定
- タイムゾーンを `東京` に設定
- 日付フォーマットを `Y-m-d` に設定
- 時刻フォーマットを `H:i` に設定
- パーマリンクを投稿名に設定
- リライトルールを更新
- サンプルの投稿、固定ページを削除
- サンプルのコメントを削除
- 下記プラグインをインストール
  - [WP Multibyte Patch](https://ja.wordpress.org/plugins/wp-multibyte-patch/)
  - [Query Monitor](https://ja.wordpress.org/plugins/query-monitor/)
- WordPress 日本語コアファイルをアップデート

## 使い方

1. Local by Flywheel でサイトを新規作成する。
1. サイトを右クリックして `Open Site SSH` を開く。
1. コンソール上で下記コマンドを実行する。

```
wp eval 'exec(file_get_contents("https://raw.githubusercontent.com/ko31/init-local-by-flywheel/master/command.sh")." > /dev/null", $output); printf("%s\n", implode("\n", $output));'
```

もし何もプラグインをインストールしたくない時は、下記コマンドに打ち替えてください。

```
wp eval 'exec(file_get_contents("https://raw.githubusercontent.com/ko31/init-local-by-flywheel/master/command-noplugins.sh")." > /dev/null", $output); printf("%s\n", implode("\n", $output));'
```

## 動作環境

以下の環境で動作確認済み。

- macOS Mojave + Local by Flywheel 3.3.0
- macOS Mojave + Local 5.3.1
- macOS Catalina + Local 6.1.2
