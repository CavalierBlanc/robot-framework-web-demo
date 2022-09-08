Robot Framework / Xray integration POC
============================================

Mac Setup
-------------------

```sh
brew install python
brew install --cask chromedriver
```

Testing Project Setup
--------------------------

```
pip3 install -r requirements.txt

python3 demoapp/server.py

robot \
  --variable SERVER:127.0.0.1:7272 \
  --variable BROWSER:Chrome \
  login_tests

```

Snippets
--------------

```sh

python3 demoapp/buggy_server.py

robot \
  --variable SERVER:127.0.0.1:7272 \
  --variable BROWSER:Chrome \
  --loglevel DEBUG \
  login_tests

robot \
  --variable SERVER:127.0.0.1:7272 \
  --variable BROWSER:Chrome \
  --test InvalidUserName \
  --loglevel DEBUG \
  login_tests

```

