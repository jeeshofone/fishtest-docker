# Use Alpine Linux as the base image
FROM alpine:latest

# Install the required packages
RUN apk add --no-cache g++ git make python3

# Set environment variables for username, password and concurrency
ENV USERNAME=""
ENV PASSWORD=""
ENV CONCURRENCY=""

# Clone the fishtest repository
RUN git clone https://github.com/glinscott/fishtest.git /home/fishtest

# Set the working directory
WORKDIR /home/fishtest/worker

# If concurrency is not set, set it to the number of CPU cores minus 1
# Then expose environment variables to the fishtest script and run it
ENTRYPOINT ["sh", "-c", "if [ -z \"$CONCURRENCY\" ]; then CONCURRENCY=$(($(nproc) - 1)); fi && python3 worker.py $USERNAME $PASSWORD --concurrency $CONCURRENCY"]
