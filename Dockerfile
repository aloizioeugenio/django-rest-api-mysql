#FROM python:3.8


FROM alpine:3.18
# Set unbuffered output for python

ENV PYTHONUNBUFFERED 1

# Create app directory
WORKDIR /app

# Bundle app source
COPY . .

#Install django
#RUN pip install django

# # Install app dependencies
# COPY requirements.txt .

# RUN pip install -r requirements.txt


# Expose port
EXPOSE 8000

ENTRYPOINT ["tail", "-f", "/dev/null"]

# # entrypoint to run the django.sh file
# ENTRYPOINT ["/app/django.sh"]


# # Use um tempo de execução oficial do Python como imagem pai
# FROM python:3.8 

# # Defina variáveis ​​de ambiente
# ENV PYTHONDONTWRITEBYTECODE 1 
# ENV PYTHONUNBUFFERED 1 

# # Defina o diretório de trabalho
# WORKDIR /app 

# # Copie o código do projeto no contêiner
# COPY . .

# # Instale dependências
# # RUN source venv/bin/activate
# # RUN pip install --no-cache-dir -r requirements.txt

# # EXPOSE 8000

# # CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]