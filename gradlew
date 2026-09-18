#!/bin/sh
# Gradle start up script for POSIX systems
DIRNAME=`dirname "$0"`
APP_BASE_NAME=`basename "$0"`
APP_HOME=`cd "$DIRNAME" && pwd`
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar
java -Dorg.gradle.appname=gradlew -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
