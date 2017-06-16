#!/usr/bin/env bash
source ../tbb/bin/tbbvars.sh intel64 linux auto_tbbroot
cd ../parsec-3.0
source ./env.sh
parsecmgmt -a build
cd ../parsec_utils
