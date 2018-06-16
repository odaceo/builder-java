#!/bin/bash

# This install script is intended to install the Open JDK.
#
# Environment variables:
# - OPENJDK_VERSION: the version to install

# Update your local package index
apt-get update

# Install packages
apt-get install -y openjdk-${OPENJDK_VERSION}-jdk-headless

# Remove the local package index
rm -rf /var/lib/apt/lists/*

# Print the installed OpenJDK version
javac -version
java -version
