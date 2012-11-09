#!/usr/bin/env roundup
#
# This file contains the test plan for the build command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m apache-maven -p build
#

# The Plan
# --------

describe "build"

it_runs_without_arguments() {
    rerun apache-maven:build || return 0
}

it_can_build_maven() {
   tmpDir="$(mktemp -d)/maven"
   cp -r ${RERUN_MODULES}/apache-maven/examples/build/maven ${tmpDir}
   rerun  apache-maven: build --release 1 --version 3.0.4 --directory "${tmpDir}"
   rpm -qip "${tmpDir}/RPMS/noarch/apache-maven-3.0.4-1.noarch.rpm"
   rm -rf "${tmpDir}"
}
