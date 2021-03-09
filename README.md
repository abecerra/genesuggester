# Gene suggester

## Local install
Dependencies: python-3.9, pip, mysql
```
git clone https://github.com/abecerra/genesuggester.git
cd genesuggester
python3 -m venv venv 
source venv/bin/activate
pip3 install -r requirements.txt
```

## Local test of SQL query
```
python3 test-dbhandler.py
```

## Local execution of web app
```
python3 app.py
```

## Deploy and execution with docker-compose
Dependencies: docker, docker-compose
```
docker-compose up
```

## Tests with curl
Dependency: curl
With the application running, do:
```
bash curl_requests.sh
```
I am using bash, but other shells can be used.
