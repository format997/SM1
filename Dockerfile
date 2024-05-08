# Use an official Node.js runtime as a parent image
FROM node:22

# Set the working directory in the container
WORKDIR /usr/src/app

# Install git and Expo CLI
RUN apt-get update && apt-get install -y nano
#RUN npm install -g expo-cli

# Clone your repository
#ARG REPO_URL
#RUN git clone ${REPO_URL} .

# Install project dependencies
#RUN npm install

#Install expo app
#RUN npx create-expo-app StickerSmash

#Clone from github
RUN git clone https://github.com/format997/SM1.git

#Change to app dir
WORKDIR /usr/src/app/SM1

#Install depedencies that we need
#RUN npx expo install react-dom react-native-web @expo/metro-runtime
RUN yarn install

# Make port 8081 available to the world outside this container
EXPOSE 8081

# Command to run the app
CMD ["npx","expo","start"]
