#!/bin/bash

export TOOLS_HOME=${HOME}/tools
export ANT_HOME=$TOOLS_HOME/ant/latest
export MAVEN_HOME=$TOOLS_HOME/maven/latest
export PATH=${ANT_HOME}/bin:${MAVEN_HOME}/bin:$PATH
