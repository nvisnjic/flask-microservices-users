FROM python:3.6.1

# set working directory
WORKDIR /app

# add requirements (to leverage Docker cache)
ADD ./requirements.txt /app/requirements.txt

# install requirements
RUN pip install -r requirements.txt

# add app
ADD . /app/

# run server
CMD python manage.py runserver -h 0.0.0.0
