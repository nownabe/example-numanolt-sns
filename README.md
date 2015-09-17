Micro Posts for Numano LT
==========================

IDCFのLT会で作った簡単な掲示板みたいなやつ。

## 使い方
### git clone
```bash
git clone https://github.com/nownabe/example-numanolt-sns.git
cd example-numanolt-sns
bundle install
```

### Google API
Google APIを使う準備をする。

`.env`にClient IDとClient Secretを書いとく

```bash
GOOGLE_CLIENT_ID=yourclientid
GOOGLE_CLIENT_SECRET=yourclientsecret
```

### 起動する

```bash
bundle exec rails server
```
