#!/bin/bash

flutter doctor --verbose

sed -i 's/distributionUrl=https\\://services.gradle.org/distributions/gradle-.*/distributionUrl=https\\://services.gradle.org/distributions/gradle-7.0.2-bin.zip/' /android/gradle/wrapper/gradle-wrapper.properties
