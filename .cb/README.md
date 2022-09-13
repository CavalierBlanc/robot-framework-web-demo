Robot Framework / Xray integration POC
============================================

See: [Testing using Robot Framework integration in Python or Java - Xray](https://docs.getxray.app/display/XRAYCLOUD/Testing+using+Robot+Framework+integration+in+Python+or+Java)

Requirements (Mac)
-----------------------

- Homebrew
- Docker

```sh
brew install python
brew install --cask chromedriver
```

Robot Framework
--------------------

### Docker Compose Quick Start

```sh
pip3 install -r requirements.txt

cd ./.cb
cp ./build/docker/.env.dev .env

docker compose up -d

# Demo App
open http://localhost

# Run tests on Demo App
robot \
  -d ./src/protected \
  ./tests/login

# Buggy App
open http://localhost:7272

# Run tests on Buggy App
robot \
  -d ./src/protected \
  --variable SERVER:localhost:7272 \
  --loglevel DEBUG \
  ./tests/login

# Robot Framework Report
open http://localhost:8080/report.html

# Shutdown
docker compose down

# (alt) Shutdown and remove volumes
docker compose down -v
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

Next Steps
--------------

- Concourse CI
- newman
  - `npm install newman-reporter-html`




