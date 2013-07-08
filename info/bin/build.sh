#!/bin/bash

CART_NAME="jetty"
CART_VERSION="8.1"
source /etc/openshift/node.conf

# Import Environment Variables
for f in ~/.env/*; do
    source $f
done

CONFIG_DIR="$CARTRIDGE_BASE_PATH/jetty-8.1/info/configuration"
export OPENSHIFT_MAVEN_MIRROR="$CONFIG_DIR/settings.base.xml"
if `echo $OPENSHIFT_GEAR_DNS | egrep -qe "\.rhcloud\.com"`; then
    export OPENSHIFT_MAVEN_MIRROR="$CONFIG_DIR/settings.rhcloud.xml"
fi

cd $OPENSHIFT_REPO_DIR

export JAVA_HOME=/etc/alternatives/java_sdk_1.7.0
export M2_HOME=/etc/alternatives/maven-3.0
export PATH=$JAVA_HOME/bin:$M2_HOME/bin:$PATH

mvn --global-settings ${OPENSHIFT_DATA_DIR}maven.xml --version
mvn --global-settings ${OPENSHIFT_DATA_DIR}maven.xml clean package -Popenshift -DskipTests

user_build.sh
