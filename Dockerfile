FROM python:3.9.2-alpine

LABEL APP="genesuggester"
LABEL APP_REPOSITORY="https://github.com/abecerra/genesuggester"

RUN adduser -D flaskuser
WORKDIR /home/flaskuser

# Copy files
COPY app.py app.py
COPY dbhandler.py dbhandler.py 
COPY test-dbhandler.py test-dbhandler.py 
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
