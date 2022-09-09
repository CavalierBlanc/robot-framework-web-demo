Robot Framework / Xray integration POC
============================================

See: [Testing using Robot Framework integration in Python or Java - Xray](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Robot+Framework+integration+in+Python+or+Java)

Robot Framework
--------------------

### Mac Requirements

```sh
brew install python
brew install --cask chromedriver

cd ./.cb
cp ./build/docker/.env.dev .env
```

### Setup

```
pip3 install -r requirements.txt

python3 demoapp/server.py

robot \
  --variable SERVER:127.0.0.1:7272 \
  --variable BROWSER:Chrome \
  login_tests

```

### Snippets

```sh
# Testing failed executions
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

Xray
---------

```sh
# Authentication
# @see https://docs.getxray.app/display/XRAYCLOUD/Authentication+-+REST+v2
# @see https://docs.getxray.app/display/XRAYCLOUD/Global+Settings%3A+API+Keys

# Robot Framework XML results - Example requests
curl -X POST \
  -H "Content-Type: text/xml" \
  -H "Authorization: Bearer $token" \
  --data @"data.xml" \
  https://xray.cloud.getxray.app/api/v2/import/execution/robot?projectKey=XTP

  # https://xray.cloud.getxray.app/api/v2/import/execution/robot?testExecKey=XNP-23
  # https://xray.cloud.getxray.app/api/v2/import/execution/robot?projectKey=XTP&testExecKey=XNP-23
  # https://xray.cloud.getxray.app/api/v2/import/execution/robot?projectKey=XTP&testPlanKey=XTP-12&revision=v2.1.0

  # projectKey=
  # testExecKey=
  # testPlanKey=
  # testEnvironments=
  # revision=
  # fixVersion=


```








