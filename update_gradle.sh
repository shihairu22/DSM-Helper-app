#!/bin/bash

flutter doctor --verbose

GRADLE_WRAPPER_FILE="./android/gradle/wrapper/gradle-wrapper.properties"

if [ -f "$GRADLE_WRAPPER_FILE" ]; then
  sed -i 's|distributionUrl=https\://services.gradle.org/distributions/gradle-.*|distributionUrl=https\://services.gradle.org/distributions/gradle-7.0.2-bin.zip|' "$GRADLE_WRAPPER_FILE"
  echo "Gradle wrapper updated successfully."
else
  echo "Error: gradle-wrapper.properties file not found at $GRADLE_WRAPPER_FILE"
  exit 1
fi
