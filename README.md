# line_notify
## whats this
https://notify-bot.line.me

開発用アクセストークンを使用して、LINE通知を行う。

## usage

1. https://notify-bot.line.me/ で、アクセストークンを取得し、botをグループに招待する。
1. LineNotify::TOKENにトークンをセットする。

```
client = LineNotify.new
client.push('ほげほげ')
```
