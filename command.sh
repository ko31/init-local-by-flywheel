#!/bin/bash

# サイトの言語を設定
wp core language install ja --activate

# タイムゾーンを設定
wp option update timezone_string 'Asia/Tokyo'

# 日付フォーマットを設定
wp option update date_format 'Y-m-d'

# 時刻フォーマットを設定
wp option update time_format 'H:i'

# パーマリンクを投稿名に設定
wp rewrite structure '/%postname%/'

# リライトルールを更新
wp rewrite flush

# サンプルの投稿、固定ページを削除
wp post delete 1 2 --force

# サンプルのコメントを削除
wp comment delete 1 --force

# 必要なプラグインインストール
wp plugin install wp-multibyte-patch --activate
wp plugin install query-monitor --activate

# WordPress 日本語コアファイルをアップデート
wp core update --locale=ja --force
