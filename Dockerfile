#Dockerfile, DockerImage, Container

#base image - pulling from Docker Hub
FROM python:3.8

#add main.py file to our container
# [source] [destination]
ADD main.py .

#install dependencies
RUN pip install requests beautifulsoup4

#specify the entry command to start the container
CMD [ "python", "./main.py" ]

#for EOF we need to use additional arguments for the docker run command

#[-t: gives sudo terminal]
#[-i: interactive-mode]
#docker run -t -i python-imdb