#!/bin/bash

# サイトの言語を設定
wp --allow-root core language install ja --activate

# タイムゾーンを設定
wp --allow-root option update timezone_string 'Asia/Tokyo'

# 日付フォーマットを設定
wp --allow-root option update date_format 'Y-m-d'

# 時刻フォーマットを設定
wp --allow-root option update time_format 'H:i'

# パーマリンクを投稿名に設定
wp --allow-root rewrite structure '/%postname%/'

# リライトルールを更新
wp --allow-root rewrite flush

# サンプルの投稿、固定ページを削除
wp --allow-root post delete 1 2 --force

# サンプルのコメントを削除
wp --allow-root comment delete 1 --force

# WordPress 日本語コアファイルをアップデート
wp --allow-root core update --locale=ja --force
