FROM openjdk

COPY . D:\demo_docker

WORKDIR D:\demo_docker

RUN javac alien.java

RUN java alien

CMD [ "echo" , "Welcome to our planet" ]
