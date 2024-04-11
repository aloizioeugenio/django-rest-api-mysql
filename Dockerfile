FROM alpine:3.18
# Set unbuffered output for python

ENV PYTHONUNBUFFERED 1

# Create app directory
WORKDIR /app

# Bundle app source
COPY . .

# Expose port
EXPOSE 8000

# Install Python
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN pip3 install -r requirements.txt
RUN source venv/bin/activate

# entrypoint to run the django.sh file
# ENTRYPOINT ["/app/django.sh"]

# Executing Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]