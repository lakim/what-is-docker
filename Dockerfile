FROM ubuntu:12.04

# Install Ruby 2.0
RUN apt-get install -y python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get install -y ruby2.0

# Install Sinatra and Thin
RUN gem install sinatra --no-ri --no-rdoc
