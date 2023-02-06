# Use a base image with the necessary tools and scripts
FROM alpine:3.13

# Set the working directory to /sidecar
WORKDIR /hello-world

# Copy the update management script into the container
#COPY update_script.sh .

# Make the script executable
#RUN chmod +x update_script.sh

RUN apk add --no-cache docker
CMD ["tail","-f","/dev/null"]

# Set the default command to run the update management script
#CMD ["./update_script.sh"]
